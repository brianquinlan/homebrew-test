import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:pubspec_parse/pubspec_parse.dart';

const headers = {
  'Accept': 'application/vnd.github+json',
  'Authorization':
      'Bearer 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',
};

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;
  final body = await request.json() as Map<String, dynamic>;
  final pubspec = Pubspec.parse(body['pubspec'] as String);
  final version = pubspec.version.toString();
  final exePath = body['exePath'] as String;
  final zipPath = '$exePath-$version.zip';
  final name = pubspec.name;

  final zipProcess = await Process.start('zip', [zipPath, exePath]);
  if (await zipProcess.exitCode != 0) {
    return Response(body: 'Zip failure');
  }

  final gCloudProcess = await Process.start(
    'gcloud',
    ['storage', 'cp', zipPath, 'gs://dart-publish-test'],
  );
  if (await gCloudProcess.exitCode != 0) {
    return Response(body: 'gcloud failure');
  }

  final client = http.Client();
  String? sha;

  final getResponse = await client.get(
    Uri.https(
      'api.github.com',
      '/repos/brianquinlan/homebrew-test/contents/$name.rb',
    ),
    headers: headers,
  );
  print(getResponse.statusCode);
  print(getResponse.body);
  if (getResponse.statusCode == 200) {
    sha =
        (jsonDecode(getResponse.body) as Map<String, dynamic>)['sha'] as String;
  }
  print(sha);
  final content = base64Encode(
    utf8.encode('''
cask "$name" do
  version "$version"
  sha256 "${sha256.convert(File(zipPath).readAsBytesSync())}"

  url "https://storage.googleapis.com/dart-publish-test/$name-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end
'''),
  );

  final setbody = jsonEncode({
    'message': 'Updated $name to $version',
    'committer': {'name': 'Release Server', 'email': 'noreply@release.org'},
    'content': content,
    if (sha != null) ...{'sha': sha},
  });

  final setRequest = await client.put(
    Uri.https(
      'api.github.com',
      '/repos/brianquinlan/homebrew-test/contents/$name.rb',
    ),
    body: setbody,
    headers: headers,
  );
  if (setRequest.statusCode != 200) {
    return Response(body: '${setRequest.statusCode}: ${setRequest.body}');
  }
  return Response(body: 'brew install --cask brianquinlan/homebrew-test/$name');
}

// gcloud auth login
// gcloud config set project dart-publish-test
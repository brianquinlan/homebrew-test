import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:jinja/jinja.dart';
import 'package:jinja/loaders.dart';

final templateUri = Platform.script.resolve('templates');
final env = Environment(loader: FileSystemLoader(paths: [templateUri.path]));

Response onRequest(
  RequestContext context,
  String download,
) {
  final template = env.getTemplate('download.html');
  return Response(
      headers: {'Content-Type': 'text/html'},
      body: template.render({'appname': download}));
}

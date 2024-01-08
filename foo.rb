cask "foo" do
  version "1.0.0"
  sha256 "eb43d0937011172a43a926d33037ada95a14bd8ba8ab4cd1620c9b0e8c620f46"

  url "https://storage.googleapis.com/dart-publish-test/foo-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "foo"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "foo"
end

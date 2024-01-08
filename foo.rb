cask "foo" do
  version "1.0.0"
  sha256 "8afbf3e78548ae9d76f72b6118a9eb96350262ed5a0403ea235fc76d7b856c84"

  url "https://storage.googleapis.com/dart-publish-test/foo-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "foo"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "foo"
end

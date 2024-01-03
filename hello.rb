cask "hello" do
  version "1.0.0"
  sha256 "60d64c47094fc916f42916b4bc073a7239b345f1da0e6eb8d3f95b94e6a78e12"

  url "https://storage.googleapis.com/dart-publish-test/hello-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "hello"
end

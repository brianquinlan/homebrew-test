cask "foo" do
  version "1.0.0"
  sha256 "08c85305a457932c9b0e0c31d13f8e9156458e639fafc39f2c9c1fef554b95b5"

  url "https://storage.googleapis.com/dart-publish-test/foo-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "foo"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "foo"
end

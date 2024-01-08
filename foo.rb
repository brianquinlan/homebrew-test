cask "foo" do
  version "1.0.0"
  sha256 "c41fff3c6bf94cb308d4d9582a699464aa7c65a9f2c4671d79e1142f3172aa7a"

  url "https://storage.googleapis.com/dart-publish-test/foo-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "foo"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "foo"
end

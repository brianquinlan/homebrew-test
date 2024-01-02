cask "myapp" do
  version "1.0.0"
  sha256 "b9d47526a141ef794a1e77fe2d7d4ef8bd7406880d8c914b7e3b87624bba41d5"

  url "https://storage.googleapis.com/dart-publish-test/myapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "myapp"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "myapp"
end

cask "myapp" do
  version "1.2.3"
  sha256 "6bbd17b43029167c41fca4bf8b092e82b71feb13c107cadc95af0b5385699eea"

  url "https://storage.googleapis.com/dart-publish-test/myapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "myapp"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "myapp"
end

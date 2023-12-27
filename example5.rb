cask "example5" do
  version "1.0.0"
  sha256 "37394e69c042c3d996ccae2dd8cd3b6f0fc05bc4a80f637b50c85426e7ac77bf"

  url "https://storage.googleapis.com/dart-publish-test/example5-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "example5"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "example5"
end

cask "toomanyapps" do
  version "1.0.0"
  sha256 "872cd626ec8316415d87a17cd6ab105036e0b6a934302b07ce058fad3e45b55a"

  url "https://storage.googleapis.com/dart-publish-test/toomanyapps-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "toomanyapps"
  desc "A sample command-line application."
  homepage "null"

  binary "toomanyapps"
end

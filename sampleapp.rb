cask "sampleapp" do
  version "1.0.0"
  sha256 "7d2728e945fa58ed963449aa05d7147f7ac7ae128b1c3db7a03a1c4247c7797f"

  url "https://storage.googleapis.com/dart-publish-test/sampleapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "sampleapp"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "sampleapp"
end

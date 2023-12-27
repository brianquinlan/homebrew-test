cask "hello2" do
  version "1.0.2"
  sha256 "37b1351aef229d754322498386dcd0b8d8a8410adb2a0b254a5b8cb8f0940aa0"

  url "https://storage.googleapis.com/dart-publish-test/hello2-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

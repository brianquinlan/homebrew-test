cask "thisisatestapp" do
  version "1.0.0"
  sha256 "3a76ec6cf803dc10a833edeaccc42a8e87235d8895d676765200714f5a017e60"

  url "https://storage.googleapis.com/dart-publish-test/thisisatestapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "thisisatestapp"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "thisisatestapp"
end

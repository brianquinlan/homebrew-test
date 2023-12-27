cask "hello2" do
  version "1.0.2"
  sha256 "18a8d7b4193f0abce18d813b5cc8d0a02e4be02cd947171ed9c83926f3427845"

  url "https://storage.googleapis.com/dart-publish-test/hello2-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

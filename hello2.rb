cask "hello2" do
  version "1.0.2"
  sha256 "a8260930725d92d0e4cac88dd862c884e36397bd38201fad5c197d6d15f479d9"

  url "https://storage.googleapis.com/dart-publish-test/hello2-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello2"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

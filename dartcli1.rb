cask "dartcli1" do
  version "1.0.3"
  sha256 "bafa650493a07a0bd0dfb03c3e0496fd9a1d49d1323679d6a3d500a64b4ae556"

  url "https://storage.googleapis.com/dart-publish-test/dartcli1-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "dartcli1"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

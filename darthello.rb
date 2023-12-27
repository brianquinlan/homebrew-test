cask "darthello" do
  version "1.0.0"
  sha256 "c60ed713b572c4087211ce4f81fe9d17b8fa8328b38c47d4c1cf7a70e99db018"

  url "https://storage.googleapis.com/dart-publish-test/darthello-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "darthello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

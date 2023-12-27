cask "hello" do
  version "1.0.1"
  sha256 "cf4c5ee0ce891b5f5909279700ca7c3ded50a3473c8a2b7ffea30ea04d023f8f"

  url "https://storage.googleapis.com/dart-publish-test/hello-#{1.0.1}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

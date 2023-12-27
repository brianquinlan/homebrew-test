cask "hello2" do
  version "1.0.2"
  sha256 "c6d9845267c91d67b0b5f62d1f60e9d367b07ca91c309c402c1d2689227e96cd"

  url "https://storage.googleapis.com/dart-publish-test/hello2-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

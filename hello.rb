cask "hello" do
  version "0.0.1"
  sha256 :no_check

  url "https://storage.googleapis.com/dart-publish-test/hello-#{version}.zip"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

# binary "hello"

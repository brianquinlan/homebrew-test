cask "hello2" do
  version "1.0.2"
  sha256 "827a42cc43c4e7d19fa566d337ed3f26080993f23ad7453e923b2efd877bfc39"

  url "https://storage.googleapis.com/dart-publish-test/hello2-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello2"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

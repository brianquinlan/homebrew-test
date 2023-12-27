cask "hello" do
  version "1.0.1"
  sha256 "328c82a4fb8cdf13e9638e54572255be3e346939b85cba07043b44bc3e0e8865"

  url "https://storage.googleapis.com/dart-publish-test/hello-#{1.0.1}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

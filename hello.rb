cask "hello" do
  version "1.0.1"
  sha256 "ded87633b854c4f31850ead7df34a94105b8e2688e1235e189474c6a07ed406f"

  url "https://storage.googleapis.com/dart-publish-test/hello-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

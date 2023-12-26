cask "hello" do
  version "0.0.1"
  sha256 "bc3ec57aa8c5c35bdbd8f10a1474f79aff277bf128069bf36da4eb9487c0a809"

  url "https://storage.googleapis.com/dart-publish-test/hello-#{version}.zip"
    verified: "storage.googleapis.com/dart-publish-test/"
  name "hello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "hello"
end

# binary "hello"
# shasum -a 256 hello-0.0.1.zip

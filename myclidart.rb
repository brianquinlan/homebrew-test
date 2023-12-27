cask "myclidart" do
  version "1.0.0"
  sha256 "309def119ccf34515891ad3558e63eaca9de8d21ab1f1923b70dacc981080136"

  url "https://storage.googleapis.com/dart-publish-test/myclidart-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "myclidart"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "myclidart"
end

cask "myclidart" do
  version "1.0.0"
  sha256 "afab018fcf31e99739fa1b9da5be639ab75424ec378a0634414db11a8c0ad3eb"

  url "https://storage.googleapis.com/dart-publish-test/myclidart-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "myclidart"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "myclidart"
end

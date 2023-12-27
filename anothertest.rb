cask "anothertest" do
  version "1.0.0"
  sha256 "a111f2750cc031554a1035bd81cbb365065dc93f946fb1478f0e7bbaf821aa6d"

  url "https://storage.googleapis.com/dart-publish-test/anothertest-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "anothertest"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "anothertest"
end

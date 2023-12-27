cask "testing123" do
  version "1.0.0"
  sha256 "922d76d070e47e94f9ee4fe1f863a4815a7627d35fbc25960a4e6bee7a1c9f23"

  url "https://storage.googleapis.com/dart-publish-test/testing123-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "testing123"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  binary "testing123"

  postflight do
      system "/usr/bin/codesign",
             "--sign",
             "-",
             "--force",
             "--preserve-metadata=entitlements,requirements,flags,runtime",
             "#{staged_path}/planet"
  end
end

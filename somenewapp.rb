cask "somenewapp" do
  version "1.0.0"
  sha256 "c6f3a1c6dd4a96c273fb9b49f3faafc3ea90b99db4c9cb2f287d4c8064843784"

  url "https://storage.googleapis.com/dart-publish-test/somenewapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "somenewapp"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "somenewapp"
end

cask "someusefulapp" do
  version "1.0.0"
  sha256 "71a00086796ba9706edf1779d417aa6234a239480222f323a4303130dc3b8905"

  url "https://storage.googleapis.com/dart-publish-test/someusefulapp-#{version}.zip",
      verified: "storage.googleapis.com/dart-publish-test/"
  name "someusefulapp"
  desc "A sample command-line application."
  homepage "https://github.com/my_org/my_repo"

  binary "someusefulapp"
end

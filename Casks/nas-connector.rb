cask "nas-connector" do
  version "0.1.5"
  sha256 "d2987df287d6b2beaf58a18c7a1c640d95653c2947be151e037e5f3eaacd2635"

  url "https://github.com/retrocompxyz/nas-connector/releases/download/v#{version}/NasConnector-#{version}-universal.dmg"
  name "NasConnector"
  desc "Menu bar app for automatically mounting SMB network shares"
  homepage "https://github.com/retrocompxyz/nas-connector"

  app "NasConnector.app"

  caveats <<~EOS
    NasConnector is not notarized by Apple. On first launch, right-click
    the app in /Applications and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/NasConnector.app"
  EOS

  zap trash: [
    "~/Library/Application Support/NasConnector",
    "~/Library/Logs/NasConnector",
    "~/Library/Preferences/com.nasconnector.app.plist",
  ]
end

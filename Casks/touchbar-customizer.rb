cask "touchbar-customizer" do
  version "0.19.11"
  sha256 "252c703a014702074b4ac482d8449cc6f3d00b6c83e9235d2403407a574cf4f5"

  url "https://github.com/retrocompxyz/touchbar-customizer/releases/download/v#{version}/TouchBarCustomizer-#{version}-universal.dmg"
  name "TouchBar Customizer"
  desc "Per-app Touch Bar customization for MacBook Pro"
  homepage "https://github.com/retrocompxyz/touchbar-customizer"

  app "TouchBar-Customizer.app"

  caveats <<~EOS
    TouchBar Customizer is not notarized by Apple. On first launch, right-click
    the app in /Applications and choose Open, or run:
      xattr -cr "/Applications/TouchBar-Customizer.app"
  EOS

  zap trash: [
    "~/Library/Application Support/TouchBarCustomizer",
    "~/Library/Caches/TouchBarCustomizer",
    "~/Library/Preferences/com.touchbarcustomizer.app.plist",
  ]
end

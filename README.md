# RetroComp Homebrew Tap

Homebrew casks for RetroComp apps.

## TouchBar Customizer

```bash
brew tap retrocompxyz/tap
brew install --cask touchbar-customizer
```

[TouchBar Customizer](https://github.com/retrocompxyz/touchbar-customizer) —
per-app Touch Bar customization for MacBook Pro (macOS 13+, physical Touch Bar).
Free for noncommercial use.

> The app is not notarized by Apple. On first launch, right-click the app in
> `/Applications` and choose **Open**, or run:
>
> ```bash
> xattr -cr "/Applications/TouchBar-Customizer.app"
> ```

## NasConnector

```bash
brew tap retrocompxyz/tap
brew install --cask nas-connector
```

[NasConnector](https://github.com/retrocompxyz/nas-connector) — a menu bar app
that automatically mounts SMB/NAS shares at login and after the network
reconnects (macOS 13+). Free for noncommercial use.

> NasConnector is not notarized by Apple. On first launch, right-click the app in
> `/Applications` and choose **Open**, or run:
>
> ```bash
> xattr -dr com.apple.quarantine "/Applications/NasConnector.app"
> ```

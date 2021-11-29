cask "aegisub-japan7" do
  version "9283-macos-42fbc93b9"
  sha256 :no_check

  url "https://hikari.butaishoujo.moe/b/da162b1a/Aegisub-3.2.2.dmg",
      verified: "hikari.butaishoujo.moe/"
  name "Aegisub-Japan7"
  desc "Create and modify subtitles"
  homepage "https://github.com/odrling/Aegisub"

  conflicts_with cask: "aegisub"

  app "Aegisub.app"

  uninstall quit: "com.aegisub.aegisub"

  zap trash: [
    "~/Library/Application Support/Aegisub",
    "~/Library/Preferences/com.aegisub.aegisub.plist",
    "~/Library/Saved Application State/com.aegisub.aegisub.savedState",
  ]
end

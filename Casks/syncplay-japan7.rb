cask "syncplay-japan7" do
  version "1016f088"
  sha256 :no_check

  url "https://hikari.butaishoujo.moe/b/#{version}/Syncplay_1.7.0.dmg",
      verified: "hikari.butaishoujo.moe/"
  name "Syncplay-Japan7"
  desc "Synchronises media players"
  homepage "https://syncplay.pl/"

  conflicts_with cask: "syncplay"
  depends_on macos: ">= :sierra"

  app "Syncplay.app"

  zap trash: [
    "~/.syncplay",
    "~/Library/Saved Application State/pl.syncplay.Syncplay.savedState",
    "~/Library/Preferences/com.syncplay.MoreSettings.plist",
    "~/Library/Preferences/com.syncplay.Interface.plist",
    "~/Library/Preferences/com.syncplay.MainWindow.plist",
    "~/Library/Preferences/pl.syncplay.Syncplay.plist",
    "~/Library/Preferences/com.syncplay.PlayerList.plist",
  ]
end

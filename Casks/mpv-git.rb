cask "mpv-git" do
  version "0.35.0-76-g3a6ef81705"
  sha256 "65496d4f67bc0449591081b2df7b70e0478cbc832960e124a15506cccd4f7ed4"

  url "https://github.com/NextFire/mpv-macos-git-builds/releases/download/mpv-#{version}/mpv-#{version}.tar",
      verified: "github.com/NextFire/mpv-macos-git-builds/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv", cask: "mpv"
  depends_on macos: ">= :sierra"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end

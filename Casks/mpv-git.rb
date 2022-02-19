cask "mpv-git" do
  version "0.34.0-202-g27c38eac10"
  sha256 "f47154c533dd8d6aed1a4ade1d882129bec833035dec87943687a67c4f5abb35"

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

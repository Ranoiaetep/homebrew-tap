class YtMusic < Formula
  desc "YouTube Music Downloader"
  homepage "https://github.com/Ranoiaetep/YT-Music"
  url "https://github.com/Ranoiaetep/YT-Music/archive/refs/tags/0.0.2.tar.gz"
  sha256 "aa24d20245496175572d1e3d848afb0d372ec5c0a28087d4717e146cbe493962"
  license ""
  head "https://github.com/Ranoiaetep/YT-Music.git", branch: "main"

  depends_on "yt-dlp"
  depends_on "ffmpeg"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/yt-music"
  end
end

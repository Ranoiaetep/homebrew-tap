class YtMusic < Formula
  desc "YouTube Music Downloader"
  homepage "https://github.com/Ranoiaetep/YT-Music"
  url "https://github.com/Ranoiaetep/YT-Music/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "eec65d5f81fdb233263f69a653450a844b867d1f3e03ea72d7f54f607a4ed7d7"
  license ""
  head "https://github.com/Ranoiaetep/YT-Music.git", branch: "main"

  depends_on "yt-dlp"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/yt-music"
  end

end

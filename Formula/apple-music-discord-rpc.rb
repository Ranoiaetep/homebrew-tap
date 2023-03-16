class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/Ranoiaetep/apple-music-discord-rpc"
  url "https://github.com/Ranoiaetep/apple-music-discord-rpc/archive/refs/tags/v0.0.2.tar.gz"
#   sha256 "48c760ae85e7ef479b563c57ce7aab6fce4529beb9e81d2af304a18c3a2336d2"
  license "MIT"
  head "https://github.com/Ranoiaetep/apple-music-discord-rpc.git", branch: "main"

  depends_on "deno"

  def install
    bin.install "music-rpc.ts"
  end

  service do
    run bin/"music-rpc.ts"
    keep_alive true
    environment_variables PATH: std_service_path_env
    working_dir var/"apple-music-discord-rpc"
    error_log_path "music-rpc.log"
  end
end

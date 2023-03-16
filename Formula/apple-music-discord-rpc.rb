class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/Ranoiaetep/apple-music-discord-rpc"
  url "https://github.com/Ranoiaetep/apple-music-discord-rpc/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "2823de08fa8521d6c902064160cb3a2d8a7d9b6d0b98eba00916aef63771722f"
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

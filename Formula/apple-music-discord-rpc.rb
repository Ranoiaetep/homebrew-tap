class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/Ranoiaetep/apple-music-discord-rpc"
  url "https://github.com/Ranoiaetep/apple-music-discord-rpc/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e409d304cb0f32606da5f5c7392ff7ed9869f6d3402ad3882a7b263153f90144"
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

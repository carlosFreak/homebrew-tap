class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.4.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.4.1/gyroflow-mcp-0.4.1-darwin-arm64.tar.gz"
    sha256 "851de8bec34a9e51f41ff0a8a1cae93f56c6ee047b1fceb0f047f657e5dcebd5"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.4.1/gyroflow-mcp-0.4.1-darwin-amd64.tar.gz"
    sha256 "b6db14523baf470a0caddc939da6fd8d1297c9938976026f3028c5d68e45559a"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  def caveats
    <<~EOS
      Color LUTs need ffmpeg, which is not installed automatically:
        brew install ffmpeg
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

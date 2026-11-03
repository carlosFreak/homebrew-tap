class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.5.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.5.0/gyroflow-mcp-0.5.0-darwin-arm64.tar.gz"
    sha256 "bf6a5071c2cbf1093b2a856bc9e72855cfc5cb0c9ff2a49f249c9cfc6e4d7720"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.5.0/gyroflow-mcp-0.5.0-darwin-amd64.tar.gz"
    sha256 "cc371844032c2a6646b9636589ab90354d36f28dda77b822adf9d45821ee75ae"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  def caveats
    <<~EOS
      Color LUTs and adjustments need ffmpeg, which is not installed automatically:
        brew install ffmpeg
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

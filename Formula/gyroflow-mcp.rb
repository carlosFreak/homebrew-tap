class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.4.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.4.0/gyroflow-mcp-0.4.0-darwin-arm64.tar.gz"
    sha256 "2084d13811c35fe90b32d8817bbc7a1516c60e812782e723a44ab928718d84c6"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.4.0/gyroflow-mcp-0.4.0-darwin-amd64.tar.gz"
    sha256 "b732b88fd2733fbbcedd8239132a0b58685d6dc95cac650028678d05b90016c2"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

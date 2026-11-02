class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.3.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.3.1/gyroflow-mcp-0.3.1-darwin-arm64.tar.gz"
    sha256 "fd7a5e1163593ea3134caed6d01cc34d654136a8750ca1c66ce1176e47065429"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.3.1/gyroflow-mcp-0.3.1-darwin-amd64.tar.gz"
    sha256 "f362140bc9fea77db93c06782d1617150fd7068d2fac21ff90092d4bad99049d"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

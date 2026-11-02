class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.3.0/gyroflow-mcp-0.3.0-darwin-arm64.tar.gz"
    sha256 "2835c51d005705373c120c098ea127845a7e3c1d626c2ad2b362672ff9b93d44"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.3.0/gyroflow-mcp-0.3.0-darwin-amd64.tar.gz"
    sha256 "7ab1f561f952e17258e26a2bd54007af5a78f2215f1fcdf79ecb87f5cc39c3ba"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

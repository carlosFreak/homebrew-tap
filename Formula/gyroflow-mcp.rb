class GyroflowMcp < Formula
  desc "MCP server that stabilizes video with the Gyroflow CLI"
  homepage "https://github.com/carlosFreak/gyroflow-mcp"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.2.0/gyroflow-mcp-0.2.0-darwin-arm64.tar.gz"
    sha256 "5f4a8af4659f2bf12f364067884cfea3ed983c5e31a3f61628705dc861e3b917"
  end

  on_intel do
    url "https://github.com/carlosFreak/gyroflow-mcp/releases/download/v0.2.0/gyroflow-mcp-0.2.0-darwin-amd64.tar.gz"
    sha256 "253e9f680529fcb7dadb0aa254cb1dcb7609890ce69740b3990d96075727591c"
  end

  def install
    bin.install "gyroflow-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gyroflow-mcp --version").strip
  end
end

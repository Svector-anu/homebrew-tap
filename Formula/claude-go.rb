class ClaudeGo < Formula
  desc "Use several Claude Code accounts as one, switching when one hits its limit"
  homepage "https://github.com/Svector-anu/claude-go"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.1/claude-go_darwin_arm64.tar.gz"
      sha256 "820781f4bf23a4f51cfce45f5f1846377d1e47efe7c3b731abb64c0797e05de6"
    end
    on_intel do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.1/claude-go_darwin_amd64.tar.gz"
      sha256 "7d0d4625e6a1b1f1a8440426188ae7ae7aa2623bd755e5d0f2a61f95ecca279f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.1/claude-go_linux_arm64.tar.gz"
      sha256 "e26e18ca0cf8ad267e2dfd77fcc343a7a19c1ed3b44db930da5eeb5b306a83bc"
    end
    on_intel do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.1/claude-go_linux_amd64.tar.gz"
      sha256 "88d3e85b9ddcf73d0008a43fa892159f24eed134257b3a3541f2c065dcfe93d5"
    end
  end

  def install
    bin.install "claude-go"
  end

  def caveats
    <<~EOS
      next: claude-go setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-go version")
  end
end

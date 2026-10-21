class ClaudeGo < Formula
  desc "Use several Claude Code accounts as one, switching when one hits its limit"
  homepage "https://github.com/Svector-anu/claude-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.0/claude-go_darwin_arm64.tar.gz"
      sha256 "50c5e31492b2a6c43e51a559d36829ad0219a675643cc2efa41e03d24b18bb38"
    end
    on_intel do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.0/claude-go_darwin_amd64.tar.gz"
      sha256 "56ce72c3db02e0cd589443fad7e4ed098ce025d333e79f93c15941cf0fa1f6e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.0/claude-go_linux_arm64.tar.gz"
      sha256 "95e008d4f8c9ab29b3820462f87518ec853651c9030e9908fb6e317b09a1caf1"
    end
    on_intel do
      url "https://github.com/Svector-anu/claude-go/releases/download/v0.1.0/claude-go_linux_amd64.tar.gz"
      sha256 "cea6e298a5cd79969cf8fe8d82c05194ece7b18fe2157ec796c63c175636a66e"
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

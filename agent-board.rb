class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.5"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-darwin-aarch64.tar.gz"
      sha256 "577cdf2d9b2e388a868364484b5feded09edd30e2cf27522da9e46b532b9e207"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-darwin-x86_64.tar.gz"
      sha256 "886e94cc5f315370c073fb110fe5861d9fc7abcd37b321e94cb9ed2ed8e6a14f"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-linux-aarch64.tar.gz"
      sha256 "1f2d5945a2f3e5353ef56c4c74e243d0613812e491403c2275da93c20ba7f5f1"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-linux-x86_64.tar.gz"
      sha256 "4bf88acb023d6ba51eeed14d3bcb55cd1a9677460fbe4439da05f79e780fcbc8"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

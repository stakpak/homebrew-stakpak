class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.5"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-darwin-aarch64.tar.gz"
      sha256 "7ad72c927beba85b7cd6457d4fb80d513be99013c62b649bdccc27371dc79852"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-darwin-x86_64.tar.gz"
      sha256 "dbf82fdd9a30a483a7605604fbe339143c303915431eaa44a7d0e8b88094f025"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-linux-aarch64.tar.gz"
      sha256 "9ab5f52801f523d4b2d793c1d59762f08d1e736f569b65176cf9dffcd92517fe"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.5/agent-board-linux-x86_64.tar.gz"
      sha256 "cc3f56b042105510104167d282257f47980ede40101ce613bbe76d08bc32445f"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

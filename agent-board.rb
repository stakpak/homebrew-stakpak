class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.2"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.2/agent-board-darwin-aarch64.tar.gz"
      sha256 "12363bfdef33f7a8fc9928a0991b84d5df8345c660b15f15ea48286009b52f77"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.2/agent-board-darwin-x86_64.tar.gz"
      sha256 "407e4c2c233fa70a696dd368d9fb662773234b279a3595f2fc56431e0312b217"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.2/agent-board-linux-aarch64.tar.gz"
      sha256 "dae42b2ba957601a91da6e90e3f7b8d01bbf11f2ae17c5b3b3e83cd93441ee5c"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.2/agent-board-linux-x86_64.tar.gz"
      sha256 "621f415a75705f82b810bd825e748acb8f6401dbdb5082289ad169407ed9dabc"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

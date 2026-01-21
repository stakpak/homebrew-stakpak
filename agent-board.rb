class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.8"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.8/agent-board-darwin-aarch64.tar.gz"
      sha256 "a624b64610295914e7603daaac6adc7b99e743755d3ba061db2788d74beaf878"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.8/agent-board-darwin-x86_64.tar.gz"
      sha256 "35af02dda34289688bcaffedb6de476571b25af8a612d4fd9a6f2e081099e1a8"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.8/agent-board-linux-aarch64.tar.gz"
      sha256 "835848852d6f1a296466a2e5d097892d7626222d178c75199d5ba598e49b29f7"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.8/agent-board-linux-x86_64.tar.gz"
      sha256 "a6f81f3c967771cd73270595239037047e35982ec608010bdfd2ccd43c468a91"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

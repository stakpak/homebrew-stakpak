class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.10"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.10/agent-board-darwin-aarch64.tar.gz"
      sha256 "877ba7107ca46965654bd1118c7af796717870dc32266fcc1c40942af5a38a0e"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.10/agent-board-darwin-x86_64.tar.gz"
      sha256 "bb4c9b024934b03c296c25af0f743088e51235e465c162e7fc0372698dbfcb13"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.10/agent-board-linux-aarch64.tar.gz"
      sha256 "c9b529b8fdb16a299ea18dbe340e6b1f23c4b3a05819856b6983b4c93ac215fb"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.10/agent-board-linux-x86_64.tar.gz"
      sha256 "ed4ec4d22f50fad71018ef85dade12424a70079dd6f2106de878ef7820766ade"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

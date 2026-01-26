class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.11"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.11/agent-board-darwin-aarch64.tar.gz"
      sha256 "5c6b38eaffb4aa97bbff47c8be37bc912f10488c9afa98ffff3870835bebaf52"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.11/agent-board-darwin-x86_64.tar.gz"
      sha256 "c3214a1c504161fbf5f2d19494ee559eb870d319f8d2ac7eb5b3dd159a7b356b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.11/agent-board-linux-aarch64.tar.gz"
      sha256 "1a6f751f0b34640a7ad973fc779e1fcefc42935d8f3e5ac64ea1ecafebfa7c52"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.11/agent-board-linux-x86_64.tar.gz"
      sha256 "7f0f59d816ba0e9cd5efe2aa782b4cf86c743690d106079de3d1458ffaa36371"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

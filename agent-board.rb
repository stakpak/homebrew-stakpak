class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.1"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.1/agent-board-darwin-aarch64.tar.gz"
      sha256 "76f79ff47e4383fe6f521286eee3093b6735f91372581fd2b04d403f10b1cb9c"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.1/agent-board-darwin-x86_64.tar.gz"
      sha256 "cfa2a529e72ab387e07a19129d6f959ba10d6546baa5a6f0702d28221e9f906c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.1/agent-board-linux-aarch64.tar.gz"
      sha256 "6672a936762d343bbce69144edb8103fd410f892afec25ebbe26af3dc4075f6f"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.1/agent-board-linux-x86_64.tar.gz"
      sha256 "82ce5f54f6d68e2ad8bbc7c1fae85eded44a53179bf4981817e73569a6b05e23"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

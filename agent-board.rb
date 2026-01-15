class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.3"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.3/agent-board-darwin-aarch64.tar.gz"
      sha256 "b07f623911dd4af31953b8fcc3fa26ed84b3e6bfc6bf9ab763872ccbc6b30834"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.3/agent-board-darwin-x86_64.tar.gz"
      sha256 "0dfe673e08033bc58212febb5c3d5c3db93a564d8a84996509b3da77770c0696"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.3/agent-board-linux-aarch64.tar.gz"
      sha256 "8f7a712063725b71f41d2b7b6d0f849cdb6fd354826163df766c465c9b94e095"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.3/agent-board-linux-x86_64.tar.gz"
      sha256 "8a004afd57f214a3564f69de4fdda5147f67673b1b2fb1e1d8d08aa884bc24a4"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.6"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.6/agent-board-darwin-aarch64.tar.gz"
      sha256 "197062f7a667b91b5b3ff7279df73c24aabd7c9590d5912c07df391bc5e0cb6f"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.6/agent-board-darwin-x86_64.tar.gz"
      sha256 "c326343d273091371b6865b40ed2d8ffb1c0d7fdc294c037579960249d2d5b47"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.6/agent-board-linux-aarch64.tar.gz"
      sha256 "6633d183faded45f4c9db69e2012489256c7b9d6856fd284b9e10e0972320309"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.6/agent-board-linux-x86_64.tar.gz"
      sha256 "384d0a12c11e38c68d5d23fc5593929129c7f01207c92854e8c5e161e17a1b6b"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

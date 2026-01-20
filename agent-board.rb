class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.7"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.7/agent-board-darwin-aarch64.tar.gz"
      sha256 "000c9dc9dbc4ad41570435a9ccc591bc2d04280ec0f3c8483f2da9b348881779"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.7/agent-board-darwin-x86_64.tar.gz"
      sha256 "724859fcefc4339c55a7bc9c5b28bc728627a1d1d5ca2688ceda7963cfbf8f1b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.7/agent-board-linux-aarch64.tar.gz"
      sha256 "160841228a8003bce92a0a39bd2cef6fbc2c7f9c7f04e8789f35477aab0c221f"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.7/agent-board-linux-x86_64.tar.gz"
      sha256 "09fd96999b95162c3b63bc1919e660b86fa9b6a75f7fde90d4c3ff5b1316bd07"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

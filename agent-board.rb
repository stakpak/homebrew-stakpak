class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.12"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.12/agent-board-darwin-aarch64.tar.gz"
      sha256 "9e835a45f40d3fd9c759c833d046f048703716e4c0f5c24e462d7d114a04d49b"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.12/agent-board-darwin-x86_64.tar.gz"
      sha256 "03aca06cfa04731ea7735681d8ca7d59e33341ffd5e02fe9c046f8a85adb95be"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.12/agent-board-linux-aarch64.tar.gz"
      sha256 "0bfb02dde5145fa0e86d44a0a34491b6f78749f7815188184363af635240f1ae"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.12/agent-board-linux-x86_64.tar.gz"
      sha256 "2f7a8c96a97ff4363053dd54e35d1369e92e8061cc4f843dd006107f1a5ae70e"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

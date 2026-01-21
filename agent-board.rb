class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.9"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.9/agent-board-darwin-aarch64.tar.gz"
      sha256 "8f3d5ce8ea51f537e23bd8ffc6717b8613dc33cab2d93eda3ab2de91baab0fd1"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.9/agent-board-darwin-x86_64.tar.gz"
      sha256 "bba29bf77c01c81dd2b978f775919b46724e95c401cf409e90daf2645b57919e"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.9/agent-board-linux-aarch64.tar.gz"
      sha256 "d75e75aa23eef37019c2f46090d691956d7371cf85a26fac8ac06c0af4838fb3"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.9/agent-board-linux-x86_64.tar.gz"
      sha256 "cfdee9eee532506fcfacc7b1ac91872399954d2b659248348b70b78e84200a56"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

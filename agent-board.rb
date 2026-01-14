class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.0/agent-board-darwin-aarch64.tar.gz"
      sha256 "c7644e012d3f690342afe4660ee8ddd4c78864224e0c2e389ed850567aeb2350"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.0/agent-board-darwin-x86_64.tar.gz"
      sha256 "cdf0fb953d8614fc2bdb324bc29e5f7f94612bf530b5a1d809c92e8b5ddf79c0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.0/agent-board-linux-aarch64.tar.gz"
      sha256 "ac94078c70e9597038981741c3f1d48e3bf3f95b0a284e7e75bf7c544a553b56"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.0/agent-board-linux-x86_64.tar.gz"
      sha256 "12596da1428340d801fda8ddf345b5557bed6a8924292637d3ef70db35b09e3b"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

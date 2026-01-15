class AgentBoard < Formula
  desc "Task management CLI for AI agents and humans"
  homepage "https://github.com/stakpak/agent-board"
  version "0.1.4"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.4/agent-board-darwin-aarch64.tar.gz"
      sha256 "a97af8419c4a948901a1d3a74d85e3ed1d368d82ba7015e434706b5385a56272"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.4/agent-board-darwin-x86_64.tar.gz"
      sha256 "e4d53c5400aa229b10b07b876d4fbe8fd04b78036afb4fcc66ca089d2b08b3fe"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.4/agent-board-linux-aarch64.tar.gz"
      sha256 "678df58020401c6830756ef01282c94828e97dfd8d5b96ffa4f9828221b24d2a"
    else
      url "https://github.com/stakpak/agent-board/releases/download/v0.1.4/agent-board-linux-x86_64.tar.gz"
      sha256 "18fe01803857bec9b2067a6e230c854d8596c46595394eea3f4bc30533630385"
    end
  end
  
  def install
    bin.install "agent-board"
  end
  
  test do
    system "#{bin}/agent-board", "--help"
  end
end

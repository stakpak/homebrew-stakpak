class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.127"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.127/stakpak-darwin-aarch64.tar.gz"
      sha256 "bcec7dd87f31ec29010e5c54db29e1d4eb3561801da3dc4d9300f4f07954ae47"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.127/stakpak-darwin-x86_64.tar.gz"
      sha256 "47be3f725384d81f38d921d0c5744d9016298c0060d3a2249b1c65b885c55717"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.127/stakpak-linux-x86_64.tar.gz"
    sha256 "451b23130936ed211a316c4e7d6c0e84d6b8d88576d60c325506011a3f4c6fbe"
  end
  
  def install
    bin.install "stakpak"
  end
end

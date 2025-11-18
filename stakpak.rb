class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.78"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.78/stakpak-darwin-aarch64.tar.gz"
      sha256 "e74d8a1b3fa40e18abf83bc9e8f8889dc6572bc92d7985fe8b4bc43f769816ad"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.78/stakpak-darwin-x86_64.tar.gz"
      sha256 "9f717cc62e67cb85ec171f1bba5637b9334662f60ce3a0fe0767da182f79c817"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.78/stakpak-linux-aarch64.tar.gz"
      sha256 "5adf669af6d347337e4545cd94d975c4fcec9517e13604219244b2f99d133082"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.78/stakpak-linux-x86_64.tar.gz"
      sha256 "92b359fc69ab1682818047d3e64de6577ab7b6b1798cd28e22bd14b14741a1fe"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

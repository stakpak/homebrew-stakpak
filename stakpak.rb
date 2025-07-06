class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.121"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.121/stakpak-darwin-aarch64.tar.gz"
      sha256 "dca9eee393cd014ca4cf5f22486ccf4637b63e150b0796b92eb120e6eb490556"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.121/stakpak-darwin-x86_64.tar.gz"
      sha256 "f9fe6d2807bb33bc47c38d2379bec33d9be3c5f93dd9fd3fcb3b498c6515049a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.121/stakpak-linux-x86_64.tar.gz"
    sha256 "0e6ef011a5c1f309ad9f08b672189fc880ce594a1c270302cec84a14dfacf2d8"
  end
  
  def install
    bin.install "stakpak"
  end
end

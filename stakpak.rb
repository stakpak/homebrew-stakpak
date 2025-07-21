class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.151"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.151/stakpak-darwin-aarch64.tar.gz"
      sha256 "2e18e72eec76e313d572aded1a7d8514d1ebdfe4e941f519aa1b5e07abe54c2e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.151/stakpak-darwin-x86_64.tar.gz"
      sha256 "324bb8f1c88fb6ea47b8946ecb9491a053d3f7ee8d7981203bf663c455080610"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.151/stakpak-linux-aarch64.tar.gz"
      sha256 "523520e7aea6ceaa3545130594205705950590480901c64449a3e76d9d0cf872"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.151/stakpak-linux-x86_64.tar.gz"
      sha256 "188b55240ce915c0646309705a12e27f542b09ded28a7c2114ac030624384321"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

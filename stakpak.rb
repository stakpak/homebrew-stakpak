class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.37"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.37/stakpak-darwin-aarch64.tar.gz"
      sha256 "8da43466ff0d249853eb5db6c3e6307a0eadc139264e9470c7626bd3c40d05f5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.37/stakpak-darwin-x86_64.tar.gz"
      sha256 "9f32d754f9f6c08ecc6db334f0070e29536531b3cd2e091cf7376db87ff87960"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.37/stakpak-linux-aarch64.tar.gz"
      sha256 "53ebc1094de6fdea2fd9e14c2a5651df7dcae79809b587bd56a03d78f8544e4e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.37/stakpak-linux-x86_64.tar.gz"
      sha256 "80e21341837b89e1c1658c18a9f0c6ca5088a8f1b4529130eb1c2ac69600f26f"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

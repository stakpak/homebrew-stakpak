class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.16"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.16/stakpak-darwin-aarch64.tar.gz"
      sha256 "109167709eeb70c239fb0f3fc12ddfc177676c7b15f637c62036a26d7e48fe90"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.16/stakpak-darwin-x86_64.tar.gz"
      sha256 "692dcc937cdb13140a351ecee1a72d0ead795a1c3e915b14d8761610d131b296"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.16/stakpak-linux-aarch64.tar.gz"
      sha256 "deec60c5941efe4f38a380f02cb7869b883d778a021dd6fdd715fbd1cfddec0b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.16/stakpak-linux-x86_64.tar.gz"
      sha256 "66573191e4d0c31018e3a820213195363ba606415b24c000e524f0322b4c3493"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

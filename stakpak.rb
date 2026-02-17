class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.50"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.50/stakpak-darwin-aarch64.tar.gz"
      sha256 "d3473955b86360131811957348f32de0fd4177c7a81205cb4b8382d2f31e5731"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.50/stakpak-darwin-x86_64.tar.gz"
      sha256 "8001d45e2ea22888aa9c01c6437060bfee4a1f2c5ca922fe27fca0231084bf5a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.50/stakpak-linux-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.50/stakpak-linux-x86_64.tar.gz"
      sha256 "16fb45a38a84c298414d813a735cb1991f96e70cb724bd42079eafb93ce7b4da"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

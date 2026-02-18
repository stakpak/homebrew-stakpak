class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.52"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.52/stakpak-darwin-aarch64.tar.gz"
      sha256 "0ec0ef8efa600309202835889773a344f2e05b0d83c4f81d5ab7b0899d1aabf2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.52/stakpak-darwin-x86_64.tar.gz"
      sha256 "db50681c78646d5ed9884b5a07b147dba7b98e97d62c517b65c89e32ee83b848"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.52/stakpak-linux-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.52/stakpak-linux-x86_64.tar.gz"
      sha256 "146fad853d76a386bab8e03fbe0359f861fc21bf20fc5286c029be3535f1c1a8"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

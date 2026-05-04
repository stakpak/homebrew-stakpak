class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.79"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.79/stakpak-darwin-aarch64.tar.gz"
      sha256 "aadbab1bdfce3823236b40271173080ded06ea685dba20f38d8461bbf7e4311d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.79/stakpak-darwin-x86_64.tar.gz"
      sha256 "a11668919fdf00ec677cd214d543a57c612cd78f635af84e1243c5ede76eac76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.79/stakpak-linux-aarch64.tar.gz"
      sha256 "5d45c26524a7d3418dd31b5c2bb3704948f3e9a874d059dfaec750e03d77f766"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.79/stakpak-linux-x86_64.tar.gz"
      sha256 "280e588088ceb53f9d8b12667a18aff51bd0d66b4f28b8a43a810626cd8faac0"
    end
  end

  def install
    bin.install "stakpak"
  end
end

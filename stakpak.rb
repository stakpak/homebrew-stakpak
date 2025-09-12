class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.41"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.41/stakpak-darwin-aarch64.tar.gz"
      sha256 "34a7a06b2773ae000b3c1378df8829f5bd2b84073f67ccc60d747ddcfd5cba0a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.41/stakpak-darwin-x86_64.tar.gz"
      sha256 "41714aae539a6ad351ed8b0a59ce0c45bf7c9d13e64b701d887561de79102214"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.41/stakpak-linux-aarch64.tar.gz"
      sha256 "ec3856ed33074f8875bc5f92d5dd18c2eddef2e2e81178335a6ab564e4df74d6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.41/stakpak-linux-x86_64.tar.gz"
      sha256 "4b3d02304acd4d123b6f21e235dbbf1f90692ee29f8b0c52f5a8057b17dc9cf0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

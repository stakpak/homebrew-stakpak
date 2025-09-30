class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.52"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.52/stakpak-darwin-aarch64.tar.gz"
      sha256 "ee9e27d2caf5485e538db8546e9a9732079f65b8bfdd3b9c78ad812b3fab9276"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.52/stakpak-darwin-x86_64.tar.gz"
      sha256 "fb8520c6f802ef42d464732a1fae17dc989b9fd0a9fb77c63f6ab88a8e52872d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.52/stakpak-linux-aarch64.tar.gz"
      sha256 "42926cefcb8297891cde030af4d4ca0739f539fa04262bddd7c6936b599b0015"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.52/stakpak-linux-x86_64.tar.gz"
      sha256 "82eedb1c2cea530938eea23108a0e611647b53c23371af5483ee98ab283614cd"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

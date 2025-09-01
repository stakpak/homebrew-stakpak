class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.32"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.32/stakpak-darwin-aarch64.tar.gz"
      sha256 "79ff348561753f8cd2f4659c5e689e789f79b34cd24726d9942fed5d04e28736"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.32/stakpak-darwin-x86_64.tar.gz"
      sha256 "8b30dc00e7e76bd9b098db178dcf691b655e6d79bd81e1ce8dd10642fc1deda1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.32/stakpak-linux-aarch64.tar.gz"
      sha256 "340a37e1e3e6c4dee7d5a690cc77b6454b5020212be5a1fe73898e87984381ff"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.32/stakpak-linux-x86_64.tar.gz"
      sha256 "df7ab4fdf829c4e7da7c5f7ef0cdf333f2e859194244778e76b2841e7d8795d8"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

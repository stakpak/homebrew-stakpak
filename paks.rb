class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.15"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.15/paks-darwin-aarch64.tar.gz"
      sha256 "dc679ea659cefd70c2b070ffef9b54dc4eb800c57eb9f44059168997b16eb781"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.15/paks-darwin-x86_64.tar.gz"
      sha256 "a34ca078ea1713dcc61cbf09a2e7d02c554d5db8c02b813fb601692c16d12f01"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.15/paks-linux-aarch64.tar.gz"
      sha256 "f9173d823b0083bba453e634b9682504154b49162d48d95f8aaa38b9e311cc44"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.15/paks-linux-x86_64.tar.gz"
      sha256 "e4f3a860085b6ddc64717d3900943658bf2a5f2338769644d254b5cec909f7e4"
    end
  end
  
  def install
    bin.install "paks"
  end
end

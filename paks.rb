class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.7/paks-darwin-aarch64.tar.gz"
      sha256 "06e16754c54add155a6c10b4eee5b7e9953e385a51198d677e32a431d4aa786f"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.7/paks-darwin-x86_64.tar.gz"
      sha256 "4fd352f91f5e4d5ce203633bd020efd9156e830695b24e5f9acb9b3cea97a855"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.7/paks-linux-aarch64.tar.gz"
      sha256 "10dc260ad003031ceaf9168107a3e67bb3b8acb6f0a02ef6c8bf8c5528d56786"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.7/paks-linux-x86_64.tar.gz"
      sha256 "3d48d2536e4c3ae1d6cbb17776cfc7d1d9a7aebb21cd6fefe7cd71d193d7c1c2"
    end
  end
  
  def install
    bin.install "paks"
  end
end

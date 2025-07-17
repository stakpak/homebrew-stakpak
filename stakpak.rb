class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.144"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.144/stakpak-darwin-aarch64.tar.gz"
      sha256 "b4bd3285c51189eab2f478ee3d5c77e2b8d979be4dac30b67a433fb974dd514b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.144/stakpak-darwin-x86_64.tar.gz"
      sha256 "cff224bf1af3f72712692af9704d93a9a707eddbb0233577aa7811d51677353b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.144/stakpak-linux-aarch64.tar.gz"
      sha256 "a2f061355b4e7a7f60d5a15cdd00abcde663e088bac010220a456fbeed1df1e6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.144/stakpak-linux-x86_64.tar.gz"
      sha256 "134bd7b7a07d1000f1d2febf957ed89a46a7ece81ddb21582a527382ed57f778"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

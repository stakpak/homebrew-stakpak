class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.9/paks-darwin-aarch64.tar.gz"
      sha256 "b33336fded4ba14154ad26a2dea9ee182c3b6313638ff55829cd724ef16d7554"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.9/paks-darwin-x86_64.tar.gz"
      sha256 "237e73f35faa80513e2671290db247d1919fcd1f416fbb8c651c49240ff3a732"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.9/paks-linux-aarch64.tar.gz"
      sha256 "91ce07612e1b49dd7598fff0be5c12b4975eb75d610b8c7f21d196412171b6a8"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.9/paks-linux-x86_64.tar.gz"
      sha256 "41f40e3b9b8353882b16040d94e327356778edea94a08c0fea958d1b5f7f149f"
    end
  end
  
  def install
    bin.install "paks"
  end
end

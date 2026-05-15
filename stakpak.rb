class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.81"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.81/stakpak-darwin-aarch64.tar.gz"
      sha256 "dc7cf366dc5c96714ad2dcc661855e574592601e476c6cddee031df149f36f3b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.81/stakpak-darwin-x86_64.tar.gz"
      sha256 "b2a132303ab254dd0e35efbb9a604b38f79481415ddd053b8423ed597a37fe18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.81/stakpak-linux-aarch64.tar.gz"
      sha256 "a831146a166610da56827aac932057fdda1b40c2a930356f5e1d6602494f4468"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.81/stakpak-linux-x86_64.tar.gz"
      sha256 "9a98f06ca1a1a9f6ed1e75c53449a6bfa1ed3985872e70d110259942ba2ce24d"
    end
  end

  def install
    bin.install "stakpak"
  end
end

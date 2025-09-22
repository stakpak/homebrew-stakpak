class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.48"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.48/stakpak-darwin-aarch64.tar.gz"
      sha256 "db8131718ab60b134f64aff77ffe8c362145af448b0b32555a24ec122e344859"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.48/stakpak-darwin-x86_64.tar.gz"
      sha256 "d107dda9bbc7e947e3b824fb31f6d5dbf1420f73d293b58736f26b23a9b897ad"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.48/stakpak-linux-aarch64.tar.gz"
      sha256 "80206118b3cb12f54b7d0bccc43816133b48277fd1f443c262a0d73226ad6a27"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.48/stakpak-linux-x86_64.tar.gz"
      sha256 "2ade28ee127590fdf06f8a41e485896a5b6a343ae065ecb664e4f32ee013cbb0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

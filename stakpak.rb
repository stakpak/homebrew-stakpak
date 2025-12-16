class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.3/stakpak-darwin-aarch64.tar.gz"
      sha256 "704785dce6e5e2b8e085f9ff71261a02aafd32c0d607dd22a15f5d843494218c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.3/stakpak-darwin-x86_64.tar.gz"
      sha256 "28b004cb2740cd2914ed927c8057e0c0695a329be94d194b9c64a97490a87abd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.3/stakpak-linux-aarch64.tar.gz"
      sha256 "acbadef0da09df072dca636dc3ea8e7b25696fef1dac9d3a971b6eff8e846f57"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.3/stakpak-linux-x86_64.tar.gz"
      sha256 "b58d4c2be5050e58b13b8cb46cb7870922a8f1f629529079222e45a5db024232"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

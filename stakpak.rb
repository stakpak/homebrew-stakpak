class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.72"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.72/stakpak-darwin-aarch64.tar.gz"
      sha256 "a6dfe8ada237425b8a80e6255a42dfea4408569a07ca0afeeb7751b9b695bf22"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.72/stakpak-darwin-x86_64.tar.gz"
      sha256 "3087950c6172d98bfa9ffdf2d3fc6f3d216a8644f92c64f4d6434026a2363cb7"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.72/stakpak-linux-aarch64.tar.gz"
      sha256 "613d5aff8dc86527d12f2c7116e25c5bc1e7ffd23519599c4950513211f12f16"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.72/stakpak-linux-x86_64.tar.gz"
      sha256 "5d5785825ba5fa7729e1db6faa5262d6e2c7a27676ac131d88a8ebe4fa76f6d0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

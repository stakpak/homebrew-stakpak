class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.45"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.45/stakpak-darwin-aarch64.tar.gz"
      sha256 "1bec4dc6df4d4da794593a3193a8c7c40960670d6454aa6c963b7a5b5638cf6a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.45/stakpak-darwin-x86_64.tar.gz"
      sha256 "3321015e9238c6dcd5e106d1c6cf902fb5b27f384474aafc1e2215d31c477d55"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.45/stakpak-linux-aarch64.tar.gz"
      sha256 "162e78271baaadf430c46bd883ee44df9327c6009c08f66cd636cf15fa94e097"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.45/stakpak-linux-x86_64.tar.gz"
      sha256 "4e76180bb12a9a235aaf4482c66c448753c79a152342e11f658a6df88c204f8d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

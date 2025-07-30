class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.11/stakpak-darwin-aarch64.tar.gz"
      sha256 "2d0954824e86203b19140e49e246ad27188a4c38a7c0c4ba7c26335c6e98d066"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.11/stakpak-darwin-x86_64.tar.gz"
      sha256 "c1630027bf540716d8826997a49ea654ecdb15b8063328554762dc681ae9e98b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.11/stakpak-linux-aarch64.tar.gz"
      sha256 "68c8f568e41efaf65bc92a287aa6dac1b426b83123d90c6bc0cf5a9dab574bfc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.11/stakpak-linux-x86_64.tar.gz"
      sha256 "121745b472e2cd69ca503d73c3121e0ad919408dad1cf48257f51e8eb7b8b700"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

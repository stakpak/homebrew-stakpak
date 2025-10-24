class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.65"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.65/stakpak-darwin-aarch64.tar.gz"
      sha256 "a010cabbfbc4fde0362edc110c548748d0af3eb18012e81208826b5b12dd2e5b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.65/stakpak-darwin-x86_64.tar.gz"
      sha256 "2c5d44c5822993e3217e7fc61f025837fdc77cb6e219eeeffd3e79c0eea7d150"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.65/stakpak-linux-aarch64.tar.gz"
      sha256 "1615aeaab394b895f62c2077ffae4bde90bf3faaf94e55f6ff9561bdc7c62a2f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.65/stakpak-linux-x86_64.tar.gz"
      sha256 "592a5cf7c14a5860e75df42737a70ac2a8ea3e4baa9672aa828c74ca2fb4ad3a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

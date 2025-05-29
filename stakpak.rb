class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.72"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.72/stakpak-darwin-aarch64.tar.gz"
      sha256 "80d36e4c5cab20bc5c26a289221acf6e3a4fc097e8533b8393eea91f07624672"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.72/stakpak-darwin-x86_64.tar.gz"
      sha256 "29f1b502dc1b5317fbcbc2507f72b2c6ef5766af1465ef8f8e881004aecbf199"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.72/stakpak-linux-x86_64.tar.gz"
    sha256 "daf157f351a4e6f622b91a4d7cb7dcf0f2a49dfbd6e2cd2d2270368b0bd2633e"
  end
  
  def install
    bin.install "stakpak"
  end
end

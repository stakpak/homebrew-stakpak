class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.11/stakpak-darwin-aarch64.tar.gz"
      sha256 "3f9f66e7a13a15a09ced25b718fafcdbd00e9a80e53651474496971ab25ada28"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.11/stakpak-darwin-x86_64.tar.gz"
      sha256 "b048620ed2bdc03aefc94c572d3aa289427c0f5c404d07d619041f783446e41c"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.11/stakpak-linux-x86_64.tar.gz"
    sha256 "3bfa2316389b6170148ff5a11711a26a237902e95ffa6f52d1fa5927dbbbdbc9"
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.40"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.40/stakpak-darwin-aarch64.tar.gz"
      sha256 "dd4a08b54f3ab84364a8e162d8cdff1a711877667fd625017afe4521a6bb8683"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.40/stakpak-darwin-x86_64.tar.gz"
      sha256 "93f4de902b54af4cdd38ce4000b0440a1787ae4811920bc0973a5201ced31452"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.40/stakpak-linux-x86_64.tar.gz"
    sha256 "440ac62791418f5894617d6cbb4a0f1a13a4a0a57854a5be98d28657e4903892"
  end
  
  def install
    bin.install "stakpak"
  end
end

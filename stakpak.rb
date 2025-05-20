class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.55"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.55/stakpak-darwin-aarch64.tar.gz"
      sha256 "fc5d90d6bb957831341f7c80b767cbb6285c448daa7574507ba5765abe9537c3"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.55/stakpak-darwin-x86_64.tar.gz"
      sha256 "3db7e84e3fbf7482f75661c28f164b8a055b986c332351aecd821bbf006713af"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.55/stakpak-linux-x86_64.tar.gz"
    sha256 "46023f7eb367de97b7589ff6eb1711ec7b175458c79c0beae950fc73e0ffc2ae"
  end
  
  def install
    bin.install "stakpak"
  end
end

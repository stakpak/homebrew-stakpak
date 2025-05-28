class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.67"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.67/stakpak-darwin-aarch64.tar.gz"
      sha256 "7ce8c61a22c94a12b74273f09c24ceadb1acf8d9252640b6faf6f13488ff20cd"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.67/stakpak-darwin-x86_64.tar.gz"
      sha256 "63835f49bc6d2526c8101d088901ee35c08dc78d989ff9d7f081376bc210fa8b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.67/stakpak-linux-x86_64.tar.gz"
    sha256 "23a39e2055c041fc09e8b1be30474e9e66702ef42ec0e642d9c024054b9a996e"
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.28"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.28/stakpak-darwin-aarch64.tar.gz"
      sha256 "b1fada55ecac06e8cc4941e68cbff46d384d5dc93bef4daa9d79946e91f25270"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.28/stakpak-darwin-x86_64.tar.gz"
      sha256 "61d83b63091b946c20795668dcf2284c903a4f8d5c9c4a980294f3083a73621a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.28/stakpak-linux-aarch64.tar.gz"
      sha256 "4d86a12b8eae89d5ba1b86bc34c5e0ecdf1e0055a0db33c9edb2087e38a3977b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.28/stakpak-linux-x86_64.tar.gz"
      sha256 "ce065bf37149a2a779cbce91612a13f82dded151ff30e1e3e0400ad424337b11"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

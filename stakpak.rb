class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.6/stakpak-darwin-aarch64.tar.gz"
      sha256 "874ad34669d3b721d958dc9f344780dbf59db19c47ff2664cf22019ec0430672"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.6/stakpak-darwin-x86_64.tar.gz"
      sha256 "14ac2e2b568348bb753fdeaa0bbab5080904e541c2d9986d05304b27ada7526b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.6/stakpak-linux-aarch64.tar.gz"
      sha256 "f6a7de8ba3efdfcc868dcf57660bf60d0342bef6de4932b003980f68e765d81c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.6/stakpak-linux-x86_64.tar.gz"
      sha256 "1e70c4841e989c0c07c5c9de0e12a23ebe86bc856d814d1f52dd05639b0a9d29"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.147"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.147/stakpak-darwin-aarch64.tar.gz"
      sha256 "43c252c7d71af18261f67b01495ca17b0535131f564b95c16bdb50e35aa5d427"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.147/stakpak-darwin-x86_64.tar.gz"
      sha256 "d1c172dd7e4c48f9b2d2d18d684056e299043dc3efe6a4cb41f2a30645d7a00a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.147/stakpak-linux-aarch64.tar.gz"
      sha256 "2132402e70d5e862e99ee0744fc11389cd08014e3b1c4011e5ffc441eced9149"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.147/stakpak-linux-x86_64.tar.gz"
      sha256 "6ce7e6f661d55fc171a1eb4724295c5de3d25bca510b3559c949d2e34bc64bd4"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

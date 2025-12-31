class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.8/stakpak-darwin-aarch64.tar.gz"
      sha256 "dea0e458abfa625cd2d012d346d06360882e8d02160a26d59db0983f56d226cc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.8/stakpak-darwin-x86_64.tar.gz"
      sha256 "cbee6d05b763d7a43089b8552212dd6db72200cf101fb27fee2f2cf5e6f897b9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.8/stakpak-linux-aarch64.tar.gz"
      sha256 "d9445442b98278ddf372cf56b23e3f98925efe4bcf7126005383c89cb718b069"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.8/stakpak-linux-x86_64.tar.gz"
      sha256 "6b98f190265e49782e505a6aed4a746edd45ff893a796b77d0f3b58046454bca"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.12/stakpak-darwin-aarch64.tar.gz"
      sha256 "f3d622de62740fdd5697888cb9ac357524c15216539893d947b3555aceef70b2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.12/stakpak-darwin-x86_64.tar.gz"
      sha256 "472e21340c1c5539a9eba9a4e9943dc396e21525eb7e441ea77d9df404f0756d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.12/stakpak-linux-aarch64.tar.gz"
      sha256 "079b46e55e0979b4b1001de94942d30c6c24fe5be7dd698b94473d47b9ab4efe"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.12/stakpak-linux-x86_64.tar.gz"
      sha256 "230bbb72ed61ef74453428ff80a8d21f4a6398d0e1c9376032848bb8f0562b8d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

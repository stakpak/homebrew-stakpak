class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.34"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.34/stakpak-darwin-aarch64.tar.gz"
      sha256 "2706e1847bd3dbfa1d83b2a6265ccd3ac43f945ff213ed16d6e2e6546d2a5a0d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.34/stakpak-darwin-x86_64.tar.gz"
      sha256 "321e81b730a259681717ab91a2555379ad406c037920b076100a40da5a575708"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.34/stakpak-linux-aarch64.tar.gz"
      sha256 "79c258bde7a96b03944ac3582513c5c72c68eb2c298a42f49ffbd25f04647d3e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.34/stakpak-linux-x86_64.tar.gz"
      sha256 "118355273e7f8666f9c3d2ead081fc3ffd47df9942eedeccae152d935b9d827e"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

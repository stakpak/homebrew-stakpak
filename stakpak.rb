class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.91"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.91/stakpak-darwin-aarch64.tar.gz"
      sha256 "410a9ed14f0c6e4db38bffe12a80c2ba578716919cbc7400624493924da18e8e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.91/stakpak-darwin-x86_64.tar.gz"
      sha256 "9d7c3a11344216c5253d3aace9faec9ba627474ed64bb5bfe5dddffc9a1f07c5"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.91/stakpak-linux-x86_64.tar.gz"
    sha256 "9c8eada65a3e0cbe6e4f1852a1ae5509f72465a42b6ef94025c6192aac7e113c"
  end
  
  def install
    bin.install "stakpak"
  end
end

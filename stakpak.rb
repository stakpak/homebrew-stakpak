class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.142"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.142/stakpak-darwin-aarch64.tar.gz"
      sha256 "bbd427a6173cf7ea301e82636d4bef993b170a59f9f45196d1afa6b054c05a68"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.142/stakpak-darwin-x86_64.tar.gz"
      sha256 "a1b0d5834d5a886e8c86757027979ad744c1d51aa0f75aa8a2f85976499df5bf"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.142/stakpak-linux-aarch64.tar.gz"
      sha256 "d57cf09e96aad644fc0ff233ba0a9490fc69d08e95167e7f9acb3fa67a796237"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.142/stakpak-linux-x86_64.tar.gz"
      sha256 "5f255cf8d12bd9fb15df601fd6fddf5d849312554b39a1115e7e4d430128d4b3"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

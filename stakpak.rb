class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.82"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.82/stakpak-darwin-aarch64.tar.gz"
      sha256 "172ba41b50e49c082c1ef79ddbae9abe69d04e120aa2182805609755769ab9e9"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.82/stakpak-darwin-x86_64.tar.gz"
      sha256 "df750fdde5e6f3a9e057c20960c12abcce88e2a58fc68ddc3f91c01053ada9e1"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.82/stakpak-linux-x86_64.tar.gz"
    sha256 "b03ddc8672addd527c3d122820c48ea8c74776072bf64dafd4c9e4b900289cc3"
  end
  
  def install
    bin.install "stakpak"
  end
end

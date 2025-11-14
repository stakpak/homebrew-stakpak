class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.75"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.75/stakpak-darwin-aarch64.tar.gz"
      sha256 "571076edabcd67f64589c1009140bb7a689cc51c0a5515a1025652bb3dd4439d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.75/stakpak-darwin-x86_64.tar.gz"
      sha256 "df48b96168d7c3d33077bd0516b1bf8143916eb95acdd7e771ae82ec52c855db"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.75/stakpak-linux-aarch64.tar.gz"
      sha256 "557890787d38eab81b140d356dde9908fe0632010143146c3462799254060ed6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.75/stakpak-linux-x86_64.tar.gz"
      sha256 "d36e3af78e6ba73116501e00b7a325df1bd5df1421534e1f759529b9db7b62c8"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

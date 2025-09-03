class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.39"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.39/stakpak-darwin-aarch64.tar.gz"
      sha256 "f9d851c084f6618d654690426fdc1f53c9cf398ed46da0d1fbd14c73af198d76"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.39/stakpak-darwin-x86_64.tar.gz"
      sha256 "48d939dcc397148aeddb94a40b9fb2e1c4e14587d55503f628b5fe527dc82112"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.39/stakpak-linux-aarch64.tar.gz"
      sha256 "fce7edbcfc60941a3a202d0cac828269fd82ed8b11ad32ad12ca6a7523c89aa2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.39/stakpak-linux-x86_64.tar.gz"
      sha256 "5a8817534f3ab2a940b966d1eda3c0a614d7ae7e583173be9f128a8715a9e932"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

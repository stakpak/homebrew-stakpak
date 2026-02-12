class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.38"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.38/stakpak-darwin-aarch64.tar.gz"
      sha256 "920096c8a1b33c357a20e4b70ae224c0716bff457fbc1b8c4bd7ab1c101535fa"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.38/stakpak-darwin-x86_64.tar.gz"
      sha256 "3d47da8e5f9010c7c47a5d921adc7d4f871d323502f2e2b345e10a1e842d76ab"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.38/stakpak-linux-aarch64.tar.gz"
      sha256 "9204c9a649d2c2ee644b5c18edaba5b555bdc04b4d63b7e87dedebbacbf433b2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.38/stakpak-linux-x86_64.tar.gz"
      sha256 "b3bbf3852c940e17def80916829bc761e4d5c396c900b1637e4e7626b2ac57bf"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

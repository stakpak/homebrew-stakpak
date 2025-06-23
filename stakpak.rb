class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.104"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.104/stakpak-darwin-aarch64.tar.gz"
      sha256 "d7950f6857d206ae1baa665ffe0953a3d7e03f5f4d3b8078da0b489e94957eee"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.104/stakpak-darwin-x86_64.tar.gz"
      sha256 "e831114188088fab25dad29c09b22204785f890156edf48e9af6cf1779509c7a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.104/stakpak-linux-x86_64.tar.gz"
    sha256 "1e667aa718a57cbbc9e90e72020f7754a8efb33801138b87843c5a5c63716763"
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.68"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.68/stakpak-darwin-aarch64.tar.gz"
      sha256 "cbf2913f6465f2dc8242256bcee48a5c41b9c6d786d6cafac626e9a8d98f4657"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.68/stakpak-darwin-x86_64.tar.gz"
      sha256 "057204d9121c08d886737dab08e756c15c8605fd5562a308cbee6a21a226be4a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.68/stakpak-linux-x86_64.tar.gz"
    sha256 "a4ac2163698ccb3b95d6ca2f4c1a8b3e948bff108fbe3aa4cc5a58d18b9f2eea"
  end
  
  def install
    bin.install "stakpak"
  end
end

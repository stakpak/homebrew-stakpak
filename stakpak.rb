class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.67"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.67/stakpak-darwin-aarch64.tar.gz"
      sha256 "f6d6818c6bc5b1db3066fc92d70646aed1cebc5be6785e68aa937fd8ae7ad3a5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.67/stakpak-darwin-x86_64.tar.gz"
      sha256 "7f76ab9ef60282c5a2ad21e45e611e798bddcafcb905287201e477ee4ac7fee4"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.67/stakpak-linux-aarch64.tar.gz"
      sha256 "f75201e2030cba3f8adb450d8e44678e1519cd0a736232dff923408d0e2714bf"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.67/stakpak-linux-x86_64.tar.gz"
      sha256 "c2cbe912d2abe561af93945cca4b0edf554af442cc3cc3f7fa85c85b6a1c1e94"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

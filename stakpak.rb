class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.45"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.45/stakpak-darwin-aarch64.tar.gz"
      sha256 "75910f5f38f8474b8a19b2eb17d82a93ca5eb653d9c35f7008c23a9c3b9e5323"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.45/stakpak-darwin-x86_64.tar.gz"
      sha256 "806fed9baa86a5f772eb79c39f86fa1749ea63bbfac2e4c1cc1e3b6b69394324"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.45/stakpak-linux-x86_64.tar.gz"
    sha256 "f3fa475ccc90ba1cb6ffbd8a6852121551c4561acf182ab8674143e662a4f28f"
  end
  
  def install
    bin.install "stakpak"
  end
end

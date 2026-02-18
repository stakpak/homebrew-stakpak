class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.54"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.54/stakpak-darwin-aarch64.tar.gz"
      sha256 "a1ebf389487a5329147af45a484ebff698b5993aae20b6ca402af20d1463f52c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.54/stakpak-darwin-x86_64.tar.gz"
      sha256 "7f2944fa0f85b15933ca06701e75a11748a3fbcc72bc39a3d301a26b9e4f2180"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.54/stakpak-linux-aarch64.tar.gz"
      sha256 "840a48bc85806d53298321a281bb8359e9addd4db30fc86b0efd5386397208cc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.54/stakpak-linux-x86_64.tar.gz"
      sha256 "754daecaeabfc9793915d5953395f483c30432942a5af5f6e5626ebddaa0f3c2"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

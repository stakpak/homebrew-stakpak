class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.134"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.134/stakpak-darwin-aarch64.tar.gz"
      sha256 "7e0f0478aeabafe89ad6fd566be73eecd7ad26568ac0dcf764fb3753ca96d8f8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.134/stakpak-darwin-x86_64.tar.gz"
      sha256 "6359535c36bffeeb713bdaf3806b627892a2fb9cd1380e1afddd7cfbbbc59da2"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.134/stakpak-linux-aarch64.tar.gz"
      sha256 "87e76fc384614c327cdc40350ade97c5731f85ca77763b7222a49d77fd12d372"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.134/stakpak-linux-x86_64.tar.gz"
      sha256 "ef3264dcfc60cfd4a653c529e980631cd808576220d4500e1253c5c03336434b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

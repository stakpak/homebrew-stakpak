class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.60"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.60/stakpak-darwin-aarch64.tar.gz"
      sha256 "b31aa5b33c7605c564938911f7ca7806921c7efbc7b6421a4ec5f89d060047f5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.60/stakpak-darwin-x86_64.tar.gz"
      sha256 "dba7a2f8aa7197a439da4b4d9129361f4f74a92b28af556c3b9041817621f53d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.60/stakpak-linux-aarch64.tar.gz"
      sha256 "b8350f37784edc49cbf039ecfb02778e46a0f91a8dfeec02dd70655a1b533244"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.60/stakpak-linux-x86_64.tar.gz"
      sha256 "b207d73ef3cc1045ccb3fe9137dd5704a7727bf3264e32acea50b0ad5baae7b5"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

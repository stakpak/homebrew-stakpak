class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.149"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.149/stakpak-darwin-aarch64.tar.gz"
      sha256 "f32da91f55d4d1ea91b86cda2efe8e59014a3f35df6f56a787268fec551732fc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.149/stakpak-darwin-x86_64.tar.gz"
      sha256 "302ab41e7d0665c2cd90e40558a42fb9aa6de38554ccc2be32469aec735108ae"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.149/stakpak-linux-aarch64.tar.gz"
      sha256 "09554d08793b4d606cc8ee7cc0cf9d5ab6f45037d83542125b0fd0a1a0f19c09"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.149/stakpak-linux-x86_64.tar.gz"
      sha256 "b07dcbd3929bdf02f6c7f8a56e11fe3635f40273d61ea8b5cfd9dff7f29a945c"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

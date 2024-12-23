class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.8/stakpak-darwin-aarch64.tar.gz"
      sha256 "1dc6890da843d70c6a8e3b745dd9a17983968f6c924aa4fe3f31313f8de4d7b6"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.8/stakpak-darwin-x86_64.tar.gz"
      sha256 "19a0dc6f5e211a7825b33efeaa17559c3cefff5ab0ef930854c0bfaca01b2c4b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.8/stakpak-linux-x86_64.tar.gz"
    sha256 "16c80f840dd7667d10512362e7f9cdc3980b88d9ce65b6ba6b2040ca6dd43179"
  end
  
  def install
    bin.install "stakpak"
  end
end

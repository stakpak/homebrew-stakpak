class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.5/stakpak-darwin-aarch64.tar.gz"
      sha256 "36a3eea909d7dc2ca389b21a0361efdba819385f7f28482a8cf0075b67ec0f33"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.5/stakpak-darwin-x86_64.tar.gz"
      sha256 "0fc5746008cfa0c91819079ab55fbd3c7a9f6769f79147a87c2e52fd41eef780"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.5/stakpak-linux-x86_64.tar.gz"
    sha256 "569a1f5afa4f517c3903da287752ba05529cb8be95e44f652c3665731ed9fbe2"
  end
  
  def install
    bin.install "stakpak"
  end
end

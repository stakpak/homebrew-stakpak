class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.2/warden-darwin-aarch64.tar.gz"
      sha256 "159e7a989c0f0b9a1dbaf0cbf0b216dd7906d43e4d91954b7b1a5892ed41059f"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.2/warden-darwin-x86_64.tar.gz"
      sha256 "86e0378bed41cd0621ef180a8162ab6ea6fc800d1e094c592246daf319679cd4"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.2/warden-linux-x86_64.tar.gz"
    sha256 "f1d106f1942171ece214990db65cb55227e2a5f60625e4b049c0d68c49ae7470"
  end
  
  def install
    bin.install "warden"
  end
end

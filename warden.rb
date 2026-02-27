class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.19"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.19/warden-darwin-aarch64.tar.gz"
      sha256 "3645d0b87f48df0880153a4fcd69f01bb6ee65aae724ce1eeae51182e5582f56"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.19/warden-darwin-x86_64.tar.gz"
      sha256 "d7773aaeecfe9efaba6df1123b70b40c37bedf19c637fdd5aca59d9a47d967be"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.19/warden-linux-aarch64.tar.gz"
      sha256 "7456dec8af09338c4b891b055a4250b8fd897dd53d3a6364c312b8068a97cba2"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.19/warden-linux-x86_64.tar.gz"
      sha256 "c08a251da2bdc893d0019352958d77e5f08ec1068adbb32d5cd8566406857d12"
    end
  end
  
  def install
    bin.install "warden"
  end
end

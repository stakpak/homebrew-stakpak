class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.10/warden-darwin-aarch64.tar.gz"
      sha256 "abef71dd3e575fe322e93cf734ae31cf0e2e27db69cac04cff7fd16129117c67"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.10/warden-darwin-x86_64.tar.gz"
      sha256 "edc52c52b0ef22bf1f426d04d48cd1fa99bdedde0dd2c001f32ce55978ce94ae"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.10/warden-linux-x86_64.tar.gz"
    sha256 "933775dca28e9e04610ced333bb1bb2729f6c3fedc34ec3658dbb2c4e72bd773"
  end
  
  def install
    bin.install "warden"
  end
end

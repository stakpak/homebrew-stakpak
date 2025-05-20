class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.56"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.56/stakpak-darwin-aarch64.tar.gz"
      sha256 "0243f7029f588943829d88cef5bfdf538ad0849d7d638af3043469df255b9c83"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.56/stakpak-darwin-x86_64.tar.gz"
      sha256 "2d21feef6db1bf229b53b9c683e2bdaccac18a7199cda91483cbf191ae041c80"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.56/stakpak-linux-x86_64.tar.gz"
    sha256 "2d2906d74dda04872d1c21b284fa38b94e10396f507949ce66a9791f27782d31"
  end
  
  def install
    bin.install "stakpak"
  end
end

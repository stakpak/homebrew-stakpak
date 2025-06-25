class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.7/warden-darwin-aarch64.tar.gz"
      sha256 "d5a7e0dccb51b1f873ad8bb1dc1bf70acfe01b07f58db7eec33010fa230b36d2"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.7/warden-darwin-x86_64.tar.gz"
      sha256 "871d108e86ab3ba1895fac36ceac4c0ae247500d688a1bea2d4578962f8fe262"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.7/warden-linux-x86_64.tar.gz"
    sha256 "b842760e36cb92b4fefc6b287ae26cf36ec913a4e1531f58d22ec6b23a5437b2"
  end
  
  def install
    bin.install "warden"
  end
end

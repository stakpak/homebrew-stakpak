class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.63"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.63/stakpak-darwin-aarch64.tar.gz"
      sha256 "c8e772a318dc62fbc011d12b4cebf3c5fc66d5ece53ae996af58044e7e1de4c4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.63/stakpak-darwin-x86_64.tar.gz"
      sha256 "e7604fabe292aaaa0d9b229adb83798e42bd7ea2cf3c2ab406be1ae18be3e061"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.63/stakpak-linux-aarch64.tar.gz"
      sha256 "968173bc49caf3580d5ee85e0aa63983a031279c6d8c17173d776ba41cedc536"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.63/stakpak-linux-x86_64.tar.gz"
      sha256 "4e8eef69cdf7aa6235f32194da8239ec43414dc0c511897470eb15909e5add64"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

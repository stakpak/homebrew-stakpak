class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.4/stakpak-darwin-aarch64.tar.gz"
      sha256 "57d157b6933071cfdbbfd37f40997fee70c40132f8e9a76289e28ae05a5b4743"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.4/stakpak-darwin-x86_64.tar.gz"
      sha256 "07d95d1a42314be8063ef6f94a6fb36b6e555d937eee42982f127f59cb0ce017"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.4/stakpak-linux-aarch64.tar.gz"
      sha256 "015211d35cc484b5a3a2c89d9da2252f33f919cb0b1a845249c93bcbad8eb971"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.4/stakpak-linux-x86_64.tar.gz"
      sha256 "9138e70968dd8c2642792bc3da7038ebeae3f3d07b61fb7f27febcaf1b117aeb"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

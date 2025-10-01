class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.54"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.54/stakpak-darwin-aarch64.tar.gz"
      sha256 "aa3346a373a0af07493fdf79f25cb8db67ccc0e421bc9bc7d48e3540653f4693"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.54/stakpak-darwin-x86_64.tar.gz"
      sha256 "d005670f8da7833c9169d86585405ddc48c9af6a59a1235ab3c70549bbdf4647"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.54/stakpak-linux-aarch64.tar.gz"
      sha256 "e0541a115f9833ed45f3d4ced5e58dd088c53566a0060f0e183645fcd85fde43"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.54/stakpak-linux-x86_64.tar.gz"
      sha256 "007b4060b8b3300333e7114efaad40da397f6270cf9dc4adc42ba2d085c290cf"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

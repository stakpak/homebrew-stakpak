class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.84"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.84/stakpak-darwin-aarch64.tar.gz"
      sha256 "3aa88cb14993e8a18e1e7a28caf970cc449038ce937fd9758b667107b9743af3"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.84/stakpak-darwin-x86_64.tar.gz"
      sha256 "6317e1e6162642a46a640f93f63728c293400008d6be0365a2408bbdf44a8cbf"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.84/stakpak-linux-x86_64.tar.gz"
    sha256 "98ea7ee01e099d14703226cbd7ac53a5d4c906e0118412b3a64fd123667df1cc"
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.60"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.60/stakpak-darwin-aarch64.tar.gz"
      sha256 "682deaa6cd4c7f93d12f0acc8ad9baed5baff8ec9434d6b5c6e1814b92acc702"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.60/stakpak-darwin-x86_64.tar.gz"
      sha256 "18bced4221dd4a3c263f8d663b131a615e870fa49b14883af557206fdb4511ab"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.60/stakpak-linux-aarch64.tar.gz"
      sha256 "2332fabde1832f3e9b1f36fa70f9c1b13475de2254bd765f859b4e77a8307704"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.60/stakpak-linux-x86_64.tar.gz"
      sha256 "16ba0eae8339327fb40c0072b645545d3f3704bd00da60d1586b5e9e6e8041bf"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

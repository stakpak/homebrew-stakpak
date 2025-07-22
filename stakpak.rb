class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.153"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.153/stakpak-darwin-aarch64.tar.gz"
      sha256 "3cbb295dbd1e9b4b54fe69e092ba13e1ca21f5a0cf8d6526772db28d4e609714"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.153/stakpak-darwin-x86_64.tar.gz"
      sha256 "823cb62e550209b213f14035fe6094faf1d1d30448d38bea209b0df9797f5f34"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.153/stakpak-linux-aarch64.tar.gz"
      sha256 "56d42a12c71893c1ad8e7852dc6c7a1fb196e480ebc65d01856cdb14a6e04249"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.153/stakpak-linux-x86_64.tar.gz"
      sha256 "84281365cf859f9a01d417cdd2c10fac44071a9fc358c867dc5499e7f3f8f958"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

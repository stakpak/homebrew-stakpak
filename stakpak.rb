class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.125"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.125/stakpak-darwin-aarch64.tar.gz"
      sha256 "a5f39585e7d91352d74ef7f4c0a845a67fdca5b86a71c9d5c41b01179c50d455"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.125/stakpak-darwin-x86_64.tar.gz"
      sha256 "8cf12e0fc35ffda47b10ca9932daad1e38a9a57ce06c1d3564a70b33a9a1e50d"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.125/stakpak-linux-x86_64.tar.gz"
    sha256 "086c0f9d484a56805e99f1d5fb6ec345f43118eed1c899ef0a2f36c2dbb2da59"
  end
  
  def install
    bin.install "stakpak"
  end
end

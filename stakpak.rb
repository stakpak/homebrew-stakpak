class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.55"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.55/stakpak-darwin-aarch64.tar.gz"
      sha256 "de9977116fd14e6888dc0767e5d20a33794a65ec416ef89d7f44b7c352f8f6fc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.55/stakpak-darwin-x86_64.tar.gz"
      sha256 "b080f7f1787b9a920faf490e5033309788cc144fd9acca0c141b380029e8e820"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.55/stakpak-linux-aarch64.tar.gz"
      sha256 "ffb953b7cbcd5df1ce008d8f737f5a4160786f9ab8cdee88cc0b538d53c94c1b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.55/stakpak-linux-x86_64.tar.gz"
      sha256 "b0f2832df39009fdc56928ea45a93e692226072e776423a1517b19ee8b364599"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

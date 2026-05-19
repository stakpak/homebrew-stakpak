class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.82"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.82/stakpak-darwin-aarch64.tar.gz"
      sha256 "9828adb4f4deaca6acde79933dbb1f4349fed7217762f5f42b82640e2557d12e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.82/stakpak-darwin-x86_64.tar.gz"
      sha256 "724d24ad08702600eb6802098f65851bcc301f433b1e0e6e8291da93fccd83cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.82/stakpak-linux-aarch64.tar.gz"
      sha256 "0c222f345f123a1e849a74087def927027066cfeb1a4886c511400e82020a8f5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.82/stakpak-linux-x86_64.tar.gz"
      sha256 "f02a2825da932f14e879d3585cfe1f3b8061aa83813f11cae8f5b6219d3d7a55"
    end
  end

  def install
    bin.install "stakpak"
  end
end

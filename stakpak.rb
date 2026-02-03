class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.19"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.19/stakpak-darwin-aarch64.tar.gz"
      sha256 "e3e151a61cab870cbf758ee4fa4672ffcf57f37e384b22a840614175fb5e643f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.19/stakpak-darwin-x86_64.tar.gz"
      sha256 "87b4aa448727875bd4bc350a881248f32653afb5f6c62b3166be07de40476600"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.19/stakpak-linux-aarch64.tar.gz"
      sha256 "9805d92938268c8fcc12d8fd0708aa50f0e9a81a660579cb9f526cf8ce89c2e5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.19/stakpak-linux-x86_64.tar.gz"
      sha256 "2924101dab1b26c04fd9be5123f251c7c74cc84dd6d1c24a64838fd7c6850e10"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end

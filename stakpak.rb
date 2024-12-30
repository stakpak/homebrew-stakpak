class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.17"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.17/stakpak-darwin-aarch64.tar.gz"
      sha256 "8ca1d085284781c772b46df4a06c90b09e313f153fb76cb53394e380f10d37ad"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.17/stakpak-darwin-x86_64.tar.gz"
      sha256 "b93aa3fc8a0f7ab417f74893957887c532c3957a3fde83e704cdaa61e125151a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.17/stakpak-linux-x86_64.tar.gz"
    sha256 "2eb87c2fded039b4cbee91357195d0f66a474a5d48db4869479224e03bafe7ab"
  end
  
  def install
    bin.install "stakpak"
  end
end

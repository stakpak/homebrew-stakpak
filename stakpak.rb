class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.62"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.62/stakpak-darwin-aarch64.tar.gz"
      sha256 "be0dd3334c5b0fd4d9755e26469d628edde6091e59357246a42e7adbe5438637"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.62/stakpak-darwin-x86_64.tar.gz"
      sha256 "86d78bf081e0c1cc3c1ca542c875367133f05166de78cf8ec13a0856b0510d3c"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.62/stakpak-linux-x86_64.tar.gz"
    sha256 "a1c4e1e8765d14b20fce8650038d63a7d086a9efacb5901875a1fefc9fe292cd"
  end
  
  def install
    bin.install "stakpak"
  end
end

class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.24"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.24/stakpak-darwin-aarch64.tar.gz"
      sha256 "af0799869acc62334723607aa0d2b3eb51a7059f01469d46b7b571a3ce96935d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.24/stakpak-darwin-x86_64.tar.gz"
      sha256 "07b42ad42d85ab2d5a2af46a8988ac83dd2d253763ae0db205806e398f5ab5f2"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.24/stakpak-linux-x86_64.tar.gz"
    sha256 "37b4a98ed695044b621201c69cc2a960179c02552edd03c4b82f8588a74447f8"
  end
  
  def install
    bin.install "stakpak"
  end
end

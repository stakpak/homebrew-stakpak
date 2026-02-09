class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.14"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.14/warden-darwin-aarch64.tar.gz"
      sha256 "af6efbfe37707466f79798f1d166a8747480f7df0c95651147b7343274769b5e"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.14/warden-darwin-x86_64.tar.gz"
      sha256 "f6cc8bbe7a136fe813dbe44599d75c9a73c816e750d358d86adc1f21cb707d4c"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.14/warden-linux-x86_64.tar.gz"
    sha256 "cbfda767c0b8665b43b49e3dc92b181afdeb98299ad9f16cd975e3f739f890c0"
  end
  
  def install
    bin.install "warden"
  end
end

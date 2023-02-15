# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GukuDevx < Formula
  desc ""
  homepage "https://devx.guku.io/"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.3.13/guku-devx_0.3.13_Darwin_x86_64.tar.gz"
      sha256 "b1695c6c239dac22b9bb82d32ab067b976ed07fb9909d69a3094f65cb7dcc11c"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.3.13/guku-devx_0.3.13_Darwin_arm64.tar.gz"
      sha256 "77756dfbe66325602c40650c36b8ac03373296bb4df29dc67d30ee45ac0eddbd"

      def install
        bin.install "devx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.3.13/guku-devx_0.3.13_Linux_x86_64.tar.gz"
      sha256 "46639a91a61aa94ee4b03fa58f8a8ecb7903a2491d4d51108d9f48851a93de6d"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.3.13/guku-devx_0.3.13_Linux_arm64.tar.gz"
      sha256 "7a8782ee23b1045f0684870554891da462b0a81973351ca00365e442e7d0a71e"

      def install
        bin.install "devx"
      end
    end
  end
end

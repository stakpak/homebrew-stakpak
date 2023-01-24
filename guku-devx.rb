# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GukuDevx < Formula
  desc ""
  homepage "https://devx.guku.io/"
  version "0.2.63"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.2.63/guku-devx_0.2.63_Darwin_x86_64.tar.gz"
      sha256 "c1c17e2e610bbb1f8377c42cb86dc9212e556c11514a6978d5441f70a370bb37"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.2.63/guku-devx_0.2.63_Darwin_arm64.tar.gz"
      sha256 "69d216f1cebde026076526953298488400d889f4739743ee7d26b0ee08f7c79d"

      def install
        bin.install "devx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.2.63/guku-devx_0.2.63_Linux_arm64.tar.gz"
      sha256 "c6e9a8a26ad663109369a8b27f66ccca7662b57978a7d749472d8e04c71965b6"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.2.63/guku-devx_0.2.63_Linux_x86_64.tar.gz"
      sha256 "02089212e554ba3a7955d2d4ef453a6b31e0943d87a2a3269a91c7054353a6ce"

      def install
        bin.install "devx"
      end
    end
  end
end

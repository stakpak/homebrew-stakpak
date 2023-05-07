# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GukuDevx < Formula
  desc ""
  homepage "https://devx.guku.io/"
  version "0.4.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.4.11/guku-devx_Darwin_x86_64.tar.gz"
      sha256 "f9318fde715da7fde9564bab9314557e76b4c7a25ecb6039d1ba06603d834af3"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.4.11/guku-devx_Darwin_arm64.tar.gz"
      sha256 "4651abd3891f82abc1729f500fceeafd93b78f9070f91f02c829369eb2f4c20a"

      def install
        bin.install "devx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.4.11/guku-devx_Linux_arm64.tar.gz"
      sha256 "e07ef1d3236085f7c9da262f6a180af8c2232200d74acdd920fe3825c58d9f26"

      def install
        bin.install "devx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/devopzilla/guku-devx/releases/download/v0.4.11/guku-devx_Linux_x86_64.tar.gz"
      sha256 "f04840bf84c53bffbe022fed5570c5be3167d604b8f146f518bf4d45d5772d30"

      def install
        bin.install "devx"
      end
    end
  end
end

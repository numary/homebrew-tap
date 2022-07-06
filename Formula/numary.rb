# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://numary.com"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/ledger/releases/download/v1.5.0/numary_1.5.0_macOS-ARM64.tar.gz"
      sha256 "2341b3de434f9b48d9df436600f0d1841623bb88c2bdc93df2cc9478c7168007"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.5.0/numary_1.5.0_macOS-64bit.tar.gz"
      sha256 "56d66b40de43ffa022f7d78199f07766c753da8aa49456c507e9a6b82a0480a1"

      def install
        bin.install "numary"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.5.0/numary_1.5.0_Linux-64bit.tar.gz"
      sha256 "08e3403c1b6e9af4ca80f39636c016efb603185b1899bdbc16c3bfca0c22a76a"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://numary.com"
  version "1.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/ledger/releases/download/v1.3.3/numary_1.3.3_macOS-ARM64.tar.gz"
      sha256 "a87dba6a8e95d62e2c4d7195ebe7c746ce32b8e9cd794195c069ce5981850853"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.3.3/numary_1.3.3_macOS-64bit.tar.gz"
      sha256 "3405f0dc4325f4def1d6092c587a69a0e5c0f1b13da4a2135b8c2b2a0d6f1b8e"

      def install
        bin.install "numary"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.3.3/numary_1.3.3_Linux-64bit.tar.gz"
      sha256 "358334a9a5e1f08a19e220f88b042de2b624cd878a4cb7f0150e89c404533a68"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end

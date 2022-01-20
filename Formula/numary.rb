# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Numary < Formula
  desc ""
  homepage "https://numary.com"
  version "1.0.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/numary/ledger/releases/download/v1.0.0-rc.2/numary_1.0.0-rc.2_macOS-ARM64.tar.gz"
      sha256 "3dfab15c2cba1133c90450f1c4f834ad3a9f43b223f55ac451c81ed2705ec7d5"

      def install
        bin.install "numary"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.0.0-rc.2/numary_1.0.0-rc.2_macOS-64bit.tar.gz"
      sha256 "7ccab8a7fede6e74a973b43a3d62c95a002177c2421dbd0a2fbadb43c4258c97"

      def install
        bin.install "numary"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/numary/ledger/releases/download/v1.0.0-rc.2/numary_1.0.0-rc.2_Linux-64bit.tar.gz"
      sha256 "057defa349b51cfa41ef2a1e89ff424fa657befd666212f01ba90b729cff60c2"

      def install
        bin.install "numary"
      end
    end
  end

  test do
    system "#{bin}/numary version"
  end
end

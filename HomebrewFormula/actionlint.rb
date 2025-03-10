# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.6.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.24/actionlint_1.6.24_darwin_arm64.tar.gz"
      sha256 "5477f8a5a4073ef086525a2512b2bf1201641cd544034ad0c66f329590638242"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.24/actionlint_1.6.24_darwin_amd64.tar.gz"
      sha256 "ce9dd9653700e3ed00464dffddd3e2a61358cf96425f2f3dff840dfc1e105eab"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.24/actionlint_1.6.24_linux_armv6.tar.gz"
      sha256 "af7380b39dc26f5ce50b7bbb0ab9160e2ffec3317f86577f2af8149fea4e03ff"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.24/actionlint_1.6.24_linux_amd64.tar.gz"
      sha256 "3c5818744143a5d6754edd3dcc4c2b32c9dfcdd3bb30e0e108fb5e5c505262d4"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.24/actionlint_1.6.24_linux_arm64.tar.gz"
      sha256 "93cc9d1f4a01f0658423b41ecf3bd8c17c619003ec683be8bac9264d0361d0d8"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  test do
    system "#{bin}/actionlint -version"
  end
end

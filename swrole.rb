class Swrole < Formula
  homepage "https://github.com/tilfin/homebrew-aws"
  url "https://raw.githubusercontent.com/tilfin/homebrew-aws/master/bin/swrole"
  sha256 "c893c5badc5bccda05a8681c82e3efd9c7360049b1a1bef82f6a5feedcb503f1"
  version "1.0"

  depends_on "jq"

  def install
    bin.install "swrole"
  end
end

class Swrole < Formula
  homepage "https://github.com/tilfin/homebrew-aws"
  url "https://raw.githubusercontent.com/tilfin/homebrew-aws/master/bin/swrole"
  sha256 "ecd4b5ce743910245f7d5bca8f7487b9fadd6f01bcc4a7ad10c17b368eabdc76"
  version "1.1"

  depends_on "jq"

  def install
    bin.install "swrole"
  end
end

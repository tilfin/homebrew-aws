class Ec2ssh < Formula
  homepage "https://github.com/tilfin/homebrew-aws"
  url "https://raw.githubusercontent.com/tilfin/homebrew-aws/master/bin/ec2ssh"
  sha256 "df54b690be920eaf67d16f9761e03b72fb02f46fe69aa5f4e0abb14af6b3034a"
  version "1.0"

  def install
    bin.install "ec2ssh"
  end
end

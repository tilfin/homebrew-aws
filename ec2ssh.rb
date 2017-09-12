class Ec2ssh < Formula
  homepage "https://github.com/tilfin/homebrew-aws"
  url "https://raw.githubusercontent.com/tilfin/homebrew-aws/master/bin/ec2ssh"
  sha256 "35f22185409f4f894b9f5bb33d19d23cc7b0681db9b9517d8735b30dde1d8db3"
  version "1.0.1"

  depends_on "jq"

  def install
    bin.install "ec2ssh"
  end
end

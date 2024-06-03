class Swrole < Formula
  homepage "https://github.com/tilfin/homebrew-aws"
  url "https://raw.githubusercontent.com/tilfin/homebrew-aws/master/bin/swrole-1.1.tar.gz"
  sha256 "151a772bd0475af3d29a3320fe23c9eec085dd29dbacd6409fc9d1c496c67561"
  version "1.1"

  depends_on "jq"

  def install
    bin.install "swrole"
  end
end

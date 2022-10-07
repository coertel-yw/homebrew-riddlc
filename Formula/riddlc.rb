require "formula"

class Riddlc < Formula
  desc "RIDDL is a language and toolset for specifying a system design."
  homepage "https://riddl.tech/"
  url "https://github.com/reactific/riddl/releases/download/0.15.3/riddlc-0.15.3.zip"
  sha256 "ee993a6703440a387b087824dbb68165a250fa30883ae408fe9f1e8bca01bcb0"
  license "Apache License 2.0"

  depends_on "openjdk"

  def install
      # inreplace "bin/riddlc", "##PREFIX##", "#{prefix}/lib"
      lib.install Dir["lib/*"]
      bin.install "bin/riddlc"
  end
end

require 'formula'

class Yolk < Formula
  homepage 'https://github.com/neonnoon/yolk'
  url 'https://github.com/neonnoon/yolk/archive/v0.2.0.tar.gz'
  sha256 '2dc36c47aae8791a29f3eab0708c27232eb9505112001e89bf08b1dff8c23530'

  head 'https://github.com/neonnoon/yolk.git'

  def install
    libexec.install 'yolk'
    bin.install_symlink libexec/'yolk'
  end
end

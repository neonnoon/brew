require 'formula'

class Yolk < Formula
  homepage 'https://github.com/neonnoon/yolk'
  url 'https://github.com/neonnoon/yolk/archive/v0.1.0.tar.gz'
  sha256 'd80a434fd3fe455c79af31aedd4f50454456f85369aaedcf7f6af49c536ff89b'

  head 'https://github.com/neonnoon/yolk.git'

  def install
    libexec.install 'yolk'
    bin.install_symlink libexec/'yolk'
  end
end

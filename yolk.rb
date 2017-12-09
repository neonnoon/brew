require 'formula'

class Yolk < Formula
  homepage 'https://github.com/neonnoon/yolk'
  url 'https://github.com/neonnoon/yolk/archive/0.1.0.tar.gz'
  sha256 '26706c7efcd867859d73251ff8d206988dfc588925bfb4e656e9cd3b14c17385'

  head 'https://github.com/neonnoon/yolk.git'

  def install
    libexec.install 'yolk'
    bin.install_symlink libexec/'yolk'
  end
end

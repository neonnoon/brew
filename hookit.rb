require 'formula'

class Hookit < Formula
  homepage 'https://github.com/neonnoon/hookit'
  url 'https://github.com/neonnoon/hookit/archive/v0.1.0.tar.gz'
  sha256 '5701d21fcff01f4117cb864b9fb7ab5049bc9be083076040cc375c5a4c6d87a8'

  head 'https://github.com/neonnoon/hookit.git'

  def install
    libexec.install 'git-hook'
    libexec.install 'hookit'
    libexec.install 'hookit-mux'
    libexec.install 'hookit-common'

    bin.install_symlink libexec/'git-hook'
    bin.install_symlink libexec/'hookit'
    bin.install_symlink libexec/'hookit-mux'
  end
end

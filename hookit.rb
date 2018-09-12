require 'formula'

class Hookit < Formula
  homepage 'https://github.com/neonnoon/hookit'
  url 'https://github.com/neonnoon/hookit/archive/v0.2.0.tar.gz'
  sha256 'a42024ceffc00a4aeba4aaf3a55162a8d7ae3fe845bbbdae841b7b470f500ce3'

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

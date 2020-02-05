require 'formula'

class Hookit < Formula
  homepage 'https://github.com/neonnoon/hookit'
  url 'https://github.com/neonnoon/hookit/archive/v0.5.0.tar.gz'
  sha256 'e27b5bc64338a01f21a0321f406b30e6f5e70dc60f710fb672ec9d4d1584664e'

  head 'https://github.com/neonnoon/hookit.git'

  depends_on 'coreutils'

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

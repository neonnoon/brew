require 'formula'

class Hookit < Formula
  homepage 'https://github.com/neonnoon/hookit'
  url 'https://github.com/neonnoon/hookit/archive/v0.4.0.tar.gz'
  sha256 'ac7f89df803879a0babb5f597b0e6970a78982882845e92d987211aff7b01306'

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

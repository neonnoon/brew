require 'formula'

class Hookit < Formula
  homepage 'https://github.com/neonnoon/hookit'
  url 'https://github.com/neonnoon/hookit/archive/v0.3.0.tar.gz'
  sha256 'b6e31385c6b64137dc1a5585e247daf62289b814b29e8c646511be187d57f787'

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

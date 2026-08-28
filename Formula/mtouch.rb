# Homebrew formula for mtouch.
#
# This file is the source of truth for the published formula. New releases of
# github.com/wanggang316/mtouch (`v*` tags) ship a prebuilt arm64 tarball plus
# a .sha256; bump `version` and `sha256` here to publish them. The binary is
# Apple Silicon only — Intel users build from source per the project README.
class Mtouch < Formula
  desc "Agent-facing macOS automation CLI: perceive, act, verify, and leave evidence"
  homepage "https://github.com/wanggang316/mtouch"
  url "https://github.com/wanggang316/mtouch/releases/download/v0.2.1/mtouch-v0.2.1-macos-arm64.tar.gz"
  version "0.2.1"
  sha256 "0f4109daee7b8386542c02218c15221339298c011c5d5322744896e3665e135f"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "mtouch"
    doc.install "README.md"
  end

  def caveats
    <<~EOS
      mtouch drives applications through the Accessibility API. macOS attaches
      that permission to the INVOKING terminal app, not to mtouch itself:

        System Settings → Privacy & Security → Accessibility → enable your terminal

      Screen Recording is additionally required for `mtouch screenshot` and
      `mtouch record`. Check both at any time with:

        mtouch doctor
    EOS
  end

  test do
    assert_match "SUBCOMMANDS", shell_output("#{bin}/mtouch --help")
    assert_match "Accessibility", shell_output("#{bin}/mtouch doctor")
  end
end

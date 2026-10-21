class Youskill < Formula
  desc "Command-line interface for the YouSkill agent skills manager"
  homepage "https://github.com/wanggang316/you-skill"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.13/youskill-v0.9.13-aarch64-apple-darwin.tar.gz"
      sha256 "7e5d653c6a0399d0baa50a7089a1e4155d83fbc079b89e5c1bf91d88befee9e3"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.13/youskill-v0.9.13-x86_64-apple-darwin.tar.gz"
      sha256 "96e8f0ec3fa9099c62b940fc8ffe457d2ea1c752e8b2a1c3d77e289be36e05c3"
    end
  end

  def install
    bin.install "youskill"
    generate_completions_from_executable(bin/"youskill", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/youskill --version")
  end
end

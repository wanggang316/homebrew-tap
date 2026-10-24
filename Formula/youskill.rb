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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.15/youskill-v0.9.15-aarch64-apple-darwin.tar.gz"
      sha256 "f1c22b76e5bd851344795f5e9e712376632da3c8b234d03e19da22e420d7c294"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.15/youskill-v0.9.15-x86_64-apple-darwin.tar.gz"
      sha256 "c3fd6d4a040f9c7feb6dbe33c60768b01624ae032d7749f6b9db080192da61bd"
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

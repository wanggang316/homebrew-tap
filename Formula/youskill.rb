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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.11.0/youskill-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "dcba2f406ebf3722c5e4e8ae8bac5ed04687db246544d6d455d6dd2009f15649"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.11.0/youskill-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee33d52a8230a46eede708e581d4e95271f95df2f77c74855245b145695a2bbc"
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

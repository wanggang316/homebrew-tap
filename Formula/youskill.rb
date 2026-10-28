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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.10.0/youskill-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8a9b828e305399c27c4ead2fb4f95057eda5c22c436cdf480b606e269948321"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.10.0/youskill-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5a18a61c1a8b4de04f06fa54cea17da76cbaa585a713b7e44392af7028cb14f"
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

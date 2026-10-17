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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.11/youskill-v0.9.11-aarch64-apple-darwin.tar.gz"
      sha256 "b133e5258a1817a95d2ceb5399deb14b8d70ed63f20fe122269c2944e56d7ece"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.11/youskill-v0.9.11-x86_64-apple-darwin.tar.gz"
      sha256 "1141598a2216ae1c97669ff2ee11732082684af0143c2b8b30dd891ea9a96ade"
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

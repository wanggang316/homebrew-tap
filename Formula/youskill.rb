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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.14/youskill-v0.9.14-aarch64-apple-darwin.tar.gz"
      sha256 "e10b8c9678aa14e8591a5daef315b0101b8d40f814427d5bd9fd4893c3580ea3"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.14/youskill-v0.9.14-x86_64-apple-darwin.tar.gz"
      sha256 "f8a3c27969ad7a87697489e36329c41d6b245a1995ab701bc444917f21fb92d3"
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

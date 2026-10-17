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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.12/youskill-v0.9.12-aarch64-apple-darwin.tar.gz"
      sha256 "147a34c56a06b8b78cebbd9ed32f5e41dea9cf6e833958d3b32bf4bbdbb1948b"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.9.12/youskill-v0.9.12-x86_64-apple-darwin.tar.gz"
      sha256 "3d23c46bc324793cf34985564e58ccba0082c4aff6b2967b444d13aecb2b13d0"
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

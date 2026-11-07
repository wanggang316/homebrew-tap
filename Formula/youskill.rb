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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.12.1/youskill-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "9e11623785207ae30f49bfb8634b824ae3897a5e3f21e65dda98ab9312ff671b"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.12.1/youskill-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "9af6c22d0c231abde9016c333a0c2d630c717943910cc4345fc796c454b26965"
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

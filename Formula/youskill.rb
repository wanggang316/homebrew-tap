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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.13.0/youskill-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c0d6c6f0e95b8d48af58c1fb5a50c83f60a19726c1f25f66be748d03cd91041"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.13.0/youskill-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8b771bf10fa33fe91ed2d1762f8161cee643c0d50c9abb4dd607238efc32f71"
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

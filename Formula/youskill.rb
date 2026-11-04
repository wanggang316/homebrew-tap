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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.11.1/youskill-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "7774c2d98f6a065f1ebb6ddcfc6bf4c0fde9648e973fbebffe467e5c87f0f66e"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.11.1/youskill-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a7f5d604e3e0272b9bc9495d6380fd07b75661daa92c559fc746ee3d2fc9fed"
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

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
      url "https://github.com/wanggang316/you-skill/releases/download/v0.12.0/youskill-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "b335af10218600cb5f4298f6dbad5113dda561ac4176ec3ed308fa653333c76e"
    end
    on_intel do
      url "https://github.com/wanggang316/you-skill/releases/download/v0.12.0/youskill-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b3c5a81bc1c882f9b3d182b9e3a3911cc5c9d536e61a02d4178ed54909747b7"
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

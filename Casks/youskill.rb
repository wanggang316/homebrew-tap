cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.15"
  sha256 arm:   "6a2d3ddc3d444d507a730632367bf5310cb1a56d99a9768c6352a8695a0242e5",
         intel: "6d29a8b2a1ac9f3151bfa06fe2fa17d8c0624c5d0b8c8ac7e76b2abd970b0e99"

  url "https://github.com/wanggang316/you-skill/releases/download/v#{version}/YouSkill_#{version}_#{arch}.dmg"
  name "YouSkill"
  desc "Desktop manager for agent skills"
  homepage "https://github.com/wanggang316/you-skill"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "YouSkill.app"

  zap trash: [
    "~/Library/Application Support/com.gumpw.youskill",
    "~/Library/Caches/com.gumpw.youskill",
    "~/Library/Preferences/com.gumpw.youskill.plist",
    "~/Library/Saved Application State/com.gumpw.youskill.savedState",
    "~/Library/WebKit/com.gumpw.youskill",
  ]
end

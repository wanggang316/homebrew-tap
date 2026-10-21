cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.14"
  sha256 arm:   "8460fb1abd2c79e9432015f11e4590f7067bbcda6ad950835018fee2b0b83a98",
         intel: "9ecd8666e15955b1ab1925743435b5c66edea9ec370135fa7bb2f2e93745741f"

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

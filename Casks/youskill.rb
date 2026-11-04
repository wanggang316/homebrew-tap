cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "dbfcbd29d84d955d73be35f8f378a5110899d9b45d8f3d6c3f209be7f058775d",
         intel: "79a3c4866331d76e699f57b27001b59e5316109d07abc0080065dd6cc62ec788"

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

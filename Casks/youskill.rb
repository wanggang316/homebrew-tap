cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.12"
  sha256 arm:   "973a800ac0038b432c5253babf01994a71244382b8b9f12ed6695b39e0591b52",
         intel: "4592521eb831d5ffb3bdca7bbe9d04b9db3d9f2026363227a5054cb988eb95c0"

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

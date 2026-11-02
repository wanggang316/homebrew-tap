cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "44b4acd1ff6ddc594e6d1ce439f484d00f376c3682f4c39cbc6e4968e6fd673c",
         intel: "5d61729a77452ce8136dd70e5b2225bcff8bd17370c63da6da5bbd6de7add342"

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

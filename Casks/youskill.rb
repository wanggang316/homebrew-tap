cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "a197de3db8ee85313fd63828c0a11a2eee2b761a0efab99237911ca6321a5798",
         intel: "51d4d0f4b0d5d239ba81e839c0359e8dfd77d4d666c955bdfa11e179c0d83af1"

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

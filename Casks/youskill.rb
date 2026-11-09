cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "620da4076604632039968bcd391988fe7c96e587c876cd99603c4a892bcae391",
         intel: "8869879ae4912b3a59cfa6f09186f9b7c77e61883e88b0f44638d73371e8e9fb"

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

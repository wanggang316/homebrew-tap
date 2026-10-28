cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "29f915f472ac23f80eab634e9a3f9e0f9818c3935d8ff3dd066cb7293864efc6",
         intel: "5e3391c344226b0ab1394902dc506645e3a5604c635ceefd67b5a81ca0a3fa7f"

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

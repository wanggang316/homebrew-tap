cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.11"
  sha256 arm:   "f1860333697d04086a0ff8c64f4fd66fee4375d568563b8bc1c9018a35ffcb0f",
         intel: "731340fe9c32c50a299fb1b2ec3acf6712258d2cd149e648b86b100a374d0b1a"

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

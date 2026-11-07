cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "e80930ecd23cb1c25df40d562771772de61ded9c7e2d63e4feb619f824d0bfa6",
         intel: "f6c3e8021593f2711decae9d0d908f49719fa6d0503a58cb8a1170c4a5a56bfd"

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

cask "youskill" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.13"
  sha256 arm:   "b5b9a2d53c99464edbca538f09981eafc6591f5ed4ddfcec0fbd1f63b8ad6e41",
         intel: "fa42e59fd5ad23fa4c226102187b010ec00609d7fbdde2f07ecebdf0be6a8922"

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

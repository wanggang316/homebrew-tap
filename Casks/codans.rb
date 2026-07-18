# Homebrew cask for codans.
#
# This file is the source of truth for the published cask. On every stable
# GitHub Release (`v*` tag, non-prerelease), `.github/workflows/update-cask.yml`
# substitutes `version` + `sha256` via `scripts/render-cask.sh` and pushes the
# rendered cask to `wanggang316/homebrew-tap` so that
# `brew install --cask wanggang316/tap/codans` resolves to the latest DMG.
#
# Sparkle handles in-app updates after install; `auto_updates true` tells
# Homebrew not to flag the post-Sparkle on-disk version as drift.
cask "codans" do
  version "0.4.16"
  sha256 "aa38a1bbb5a15e20b069ad72ab945b3f2a208afce178665b695d244a860e90f5"

  url "https://github.com/wanggang316/codans/releases/download/v#{version}/Codans-#{version}.dmg",
      verified: "github.com/wanggang316/codans/"
  name "Codans"
  desc "Terminal orchestrator for CLI-agent power users (Project → Worktree → Tab → Pane)"
  homepage "https://github.com/wanggang316/codans"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Codans.app"
  binary "#{appdir}/Codans.app/Contents/Resources/bin/codans"

  zap trash: [
    "~/Library/Application Support/Codans",
    "~/Library/Caches/com.gumpw.codans",
    "~/Library/HTTPStorages/com.gumpw.codans",
    "~/Library/Preferences/com.gumpw.codans.plist",
    "~/Library/Saved Application State/com.gumpw.codans.savedState",
  ]
end

cask "skillbox" do
  version "0.1.0-alpha.1"
  sha256 "8221e1973f95f80cb3c52a12239368df39a7286c3642d36118b3b13c7f4fe711"

  url "https://github.com/santosli/skill-box/releases/download/v#{version}/SkillBox_#{version}_universal.dmg",
      verified: "github.com/santosli/skill-box/"
  name "SkillBox"
  desc "Local skill manager for agent runtimes"
  homepage "https://github.com/santosli/skill-box"

  depends_on macos: ">= :sonoma"

  app "SkillBox.app"

  zap trash: [
    "~/Library/Application Support/io.github.santosli.skillbox",
    "~/Library/Caches/io.github.santosli.skillbox",
    "~/Library/Logs/SkillBox",
    "~/Library/Preferences/io.github.santosli.skillbox.plist",
    "~/Library/Saved Application State/io.github.santosli.skillbox.savedState",
  ]
end

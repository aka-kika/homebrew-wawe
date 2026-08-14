cask "wawe" do
  version "0.2.0"
  sha256 "17a864c4aa6bc0c52e4b6cfef936b95f1855838ba59d36a40becf7334dd1051c"

  url "https://github.com/aka-kika/WAWE/releases/download/v#{version}/WAWE-#{version}.dmg",
      verified: "github.com/aka-kika/WAWE/"
  name "WAWE"
  desc "Keyboard-first menu-bar glossary with progressive disclosure"
  homepage "https://github.com/aka-kika/WAWE"

  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 26 Tahoe or newer.
  depends_on macos: ">= :tahoe"

  app "WAWE.app"

  zap trash: [
    "~/Library/Application Support/WAWE",
    "~/Library/Preferences/com.kika.wawe.plist",
  ]
end

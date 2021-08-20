cask "devutils" do
  version "1.11.0,83"
  sha256 "15db5a505a1319e88b9cb7f04fcc3666eb1d58c671cae359ae31480de020e1f2"

  url "https://devutils.app/archives/DevUtils-#{version.before_comma}.dmg"
  name "DevUtils"
  desc "Offline toolbox for developers"
  homepage "https://devutils.app/"

  livecheck do
    url "https://devutils.app/archives/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end

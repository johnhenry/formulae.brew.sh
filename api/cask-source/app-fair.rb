cask "app-fair" do
  version "0.8.90"
  sha256 "e8310e2f022e6bb7a5d099e92a3cd11247824026e96a5a6e08a78b658812d682"

  url "https://github.com/App-Fair/App/releases/download/#{version}/App-Fair-macOS.zip",
      verified: "github.com/App-Fair/App/"
  name "App Fair"
  desc "Catalog of free and commercial native desktop applications"
  homepage "https://appfair.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "App Fair.app"
  binary "#{appdir}/App Fair.app/Contents/MacOS/App Fair", target: "app-fair"

  zap trash: [
        "~/Library/Application Scripts/app.App-Fair",
        "~/Library/Application Support/app.App-Fair",
        "~/Library/Caches/app.App-Fair",
        "~/Library/Containers/app.App-Fair",
        "~/Library/HTTPStorages/app.App-Fair",
        "~/Library/HTTPStorages/app.App-Fair.binarycookies",
        "~/Library/Preferences/app.App-Fair.plist",
        "~/Library/Saved Application State/app.App-Fair.savedState",
      ],
      rmdir: "/Applications/App Fair"
end

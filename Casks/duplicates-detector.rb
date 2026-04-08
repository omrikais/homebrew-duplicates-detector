cask "duplicates-detector" do
  version "3.0.2"
  sha256 "707dd7a29b249a46b42ce9d904eb53aa912bf0268ebdafbdeff8de4ce8808a76"

  url "https://github.com/omrikais/duplicates-detector-oss/releases/download/v#{version}/DuplicatesDetector.dmg"
  name "Duplicates Detector"
  desc "Detect duplicate/similar video, image, and audio files"
  homepage "https://github.com/omrikais/duplicates-detector-oss"

  depends_on macos: ">= :tahoe"

  app "Duplicates Detector.app"
  binary "#{appdir}/Duplicates Detector.app/Contents/Resources/cli/duplicates-detector"

  zap trash: [
    "~/Library/Application Support/DuplicatesDetector",
    "~/.local/share/duplicates-detector",
  ]
end

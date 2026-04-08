cask "duplicates-detector" do
  version "3.0.4"
  sha256 "8f84e7042e8910c30bd1901360f766365001a1984be229ef2d20304616107e82"

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

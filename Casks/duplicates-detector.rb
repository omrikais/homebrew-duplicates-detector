cask "duplicates-detector" do
  version "3.0.1"
  sha256 "8ea35a21c97c909cf12c6235ec6729cd3143cce8cd3a24b6b82e26b8c302c153"

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

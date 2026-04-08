cask "duplicates-detector-gui" do
  version "3.0.0"
  sha256 "c4d446537528d95eea15abbb5b8c78eff094feebb7a7ad5daebc77cc544a80be"

  url "https://github.com/omrikais/duplicates-detector-oss/releases/download/v#{version}/DuplicatesDetector.dmg"
  name "Duplicates Detector"
  desc "Native macOS GUI for detecting duplicate video, image, and audio files"
  homepage "https://github.com/omrikais/duplicates-detector-oss"

  depends_on formula: "omrikais/duplicates-detector/duplicates-detector"
  depends_on macos: ">= :tahoe"

  app "Duplicates Detector.app"

  zap trash: [
    "~/Library/Application Support/DuplicatesDetector",
    "~/.local/share/duplicates-detector",
  ]
end

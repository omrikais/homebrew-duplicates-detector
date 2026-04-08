cask "duplicates-detector" do
  version "3.0.1"
  sha256 "cd913baaf0b43d382e3a042cc3647b9e13b5025a9cf226714c85bcb4acb2f257"

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

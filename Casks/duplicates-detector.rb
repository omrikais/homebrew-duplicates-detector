cask "duplicates-detector" do
  version "3.0.3"
  sha256 "71a9b3e4b77855d5f3646aeeaba8a089e840efd0b9e37e3eed3eab89eb6abec2"

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

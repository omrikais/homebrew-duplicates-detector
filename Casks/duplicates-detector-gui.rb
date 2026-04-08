cask "duplicates-detector-gui" do
  version "2.0.0"
  sha256 "5f70bf18a086007016e948b04aed3b82103a36bea41755b6cddfaf10ace3c6ef"

  url "https://github.com/omrikais/duplicates-detector/releases/download/v#{version}/DuplicatesDetector.dmg"
  name "Duplicates Detector"
  desc "Native macOS GUI for detecting duplicate video, image, and audio files"
  homepage "https://github.com/omrikais/duplicates-detector"

  depends_on formula: "omrikais/duplicates-detector/duplicates-detector"
  depends_on macos: ">= :tahoe"

  app "Duplicates Detector.app"

  zap trash: [
    "~/Library/Application Support/DuplicatesDetector",
    "~/.local/share/duplicates-detector",
  ]
end

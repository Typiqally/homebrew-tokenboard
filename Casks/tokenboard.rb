cask "tokenboard" do
  version "0.1.0"
  sha256 "e37618ef13705bc9d989f8eae0d800d37d1ec100d7fec426bf10bf3e0d912906"

  url "https://github.com/Typiqally/tokenboard/releases/download/v#{version}/Tokenboard-#{version}.zip"
  name "Tokenboard"
  desc "Track local Claude Code and Codex token usage from the menu bar"
  homepage "https://github.com/Typiqally/tokenboard"

  depends_on macos: :sonoma

  app "Tokenboard.app"

  caveats <<~EOS
    Tokenboard is distributed without Apple notarization. Before its first
    launch, explicitly remove the quarantine attribute from the installed app:

      xattr -dr com.apple.quarantine /Applications/Tokenboard.app

    This does not grant Tokenboard additional permissions. Tokenboard remains
    sandboxed and requests read-only access to folders you explicitly choose.
  EOS
end

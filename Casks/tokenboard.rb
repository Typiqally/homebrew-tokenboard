cask "tokenboard" do
  version "0.9.3"
  sha256 "f78d5dde1fb34e3fd581a9f5355a2efdbb351a85cdd138c301762cae139b7aa7"

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

    This does not grant Tokenboard additional permissions. Tokenboard is
    intentionally unsandboxed for same-user Discord IPC and requests read-only
    access to folders you explicitly choose.
  EOS
end

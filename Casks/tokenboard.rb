cask "tokenboard" do
  version "0.9.5"
  sha256 "4b477509b32243b867af7adadf54620a84c18330b16ef00ff7793e01597754b9"

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

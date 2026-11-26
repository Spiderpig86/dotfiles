# winget

Declarative package list for a fresh Windows 11 machine, using [WinGet Configuration](https://learn.microsoft.com/windows/package-manager/configuration/). It is the Windows counterpart to `brew/Brewfile`.

## Usage

Run from this folder, ideally in an elevated terminal (Docker Desktop and WSL want admin rights, and a reboot may be needed afterwards):

```powershell
winget configure -f winget-config.dsc.yaml
```

Or straight from GitHub:

```powershell
winget configure -f https://raw.githubusercontent.com/Spiderpig86/dotfiles/master/winget/winget-config.dsc.yaml
```

- The first run asks you to accept the configuration agreement and downloads the `Microsoft.WinGet.DSC` module. Add `--accept-configuration-agreements` to skip the prompt.
- It is idempotent: packages that are already installed are skipped, so it is safe to re-run.
- To check the file without installing anything: `winget configure validate -f winget-config.dsc.yaml`

## What's in it

| Group | Packages |
|---|---|
| Dev | Git, Git LFS, Go, Yarn, Node.js LTS, uv, Docker Desktop, WSL, Zed |
| Terminal | Windows Terminal, Oh My Posh, Fastfetch |
| Window manager / bar | GlazeWM, YASB, Windhawk |
| Browsers | LibreWolf, Helium |
| Apps | Obsidian, Notepad++, Claude, Notion, Spotify, 7-Zip, ScreenToGif |
| System | PC Health Check |

## After installing

Python versions are managed by uv rather than installed system-wide:

```powershell
uv python install 3.14
```

## Adding a package

Find its ID with `winget search <name>`, then copy an existing block in the YAML and change `id`, `description` and `settings.id`.

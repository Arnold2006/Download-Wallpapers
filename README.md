# Download-Wallpapers

A tiny, focused PowerShell script to grab random wallpapers from https://picsum.photos and save them as numbered images (wallpaper01.jpg, wallpaper02.jpg, ...). Perfect for quickly filling a folder with fresh backgrounds for testing, rotating wallpapers, or just collecting beautiful images.

Why this repo exists
- Fast: one command to download N random images.
- Predictable filenames: easy to reference from wallpaper rotators or scripts.
- Lightweight: a single PowerShell script — no dependencies.

Preview
- Source: https://picsum.photos
- Output filenames: wallpaper01.jpg, wallpaper02.jpg, ...

Features
- Download a specified number of random images
- Save to a folder you choose (creates it if missing)
- Zero dependencies outside PowerShell
- Optional filename prefix and zero-padded numbering

Requirements
- Windows PowerShell (PowerShell 5.x / PowerShell 7+ recommended)
- Internet access to reach picsum.photos

Quick start

1. Clone the repo (or download the script file)
   git clone https://github.com/Arnold2006/Download-Wallpapers.git

2. Run the script (example)
   Open PowerShell and run:
   powershell -ExecutionPolicy Bypass -File .\download-wallpapers.ps1 -Count 10 -OutputDir "C:\Wallpapers"

Common options (example names — check the script for exact parameter names)
- -Count <int>        : Number of wallpapers to download (default: 10)
- -OutputDir <path>   : Destination folder (created if it doesn't exist)
- -Prefix <string>    : Filename prefix (default: "wallpaper")
- -Width/-Height      : Optional dimensions to request from picsum (e.g. 1920 1080)

Example
- Download 5 wallpapers to a folder named Wallpapers in your user profile:
  powershell -ExecutionPolicy Bypass -File .\download-wallpapers.ps1 -Count 5 -OutputDir "$env:USERPROFILE\Pictures\Wallpapers"

Scheduling tip
- Want a fresh set every day? Create a Task Scheduler task that runs the script on a schedule and points a wallpaper rotator at the output folder.

Safety & etiquette
- The script requests images from a public service (picsum.photos). Use responsibly and respect bandwidth limits.
- If you plan heavy automated downloads, consider checking the service's usage guidance.

Contributing
- Bug reports and PRs are welcome. Open issues/PRs with a short description and steps to reproduce.
- If you'd like additional features (naming templates, preserving EXIF, filtering by aspect ratio), open an issue so we can discuss.

License
- See the LICENSE file in this repository for license details.

Questions or tweaks?
- Want me to add an example Task Scheduler .xml, switch to curl/wget compatibility, or push this README into the repo for you? Tell me what you want next and I’ll update or push it.

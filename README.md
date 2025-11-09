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


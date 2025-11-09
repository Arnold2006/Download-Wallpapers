# Number of images to download
$Count = 10

# Target folder (change this to where you want to save)
$TargetFolder = "C:\Wallpapers"

# Create the folder if it doesn't exist
if (-not (Test-Path $TargetFolder)) {
    New-Item -ItemType Directory -Path $TargetFolder | Out-Null
}

# Base URL
$Url = "https://picsum.photos/1920/1080?random=1"

# Loop to download images
for ($i = 1; $i -le $Count; $i++) {
    $FileNumber = "{0:D2}" -f $i
    $FileName = "wallpaper$FileNumber.jpg"
    $FilePath = Join-Path $TargetFolder $FileName
    Write-Host "Downloading $FileName ..."
    Invoke-WebRequest -Uri $Url -OutFile $FilePath
    Start-Sleep -Milliseconds 500  # optional pause between downloads
}

Write-Host "✅ Download complete! $Count wallpapers saved to $TargetFolder"

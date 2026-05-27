# VintageChestsAndTrunks Mod Build & Package Script

# Stop on errors
$ErrorActionPreference = "Stop"

# Paths
$ModDir = $PSScriptRoot
$ReleaseDir = Join-Path $ModDir "release"
$ModZipName = "vintagechestsandtrunks_v1.0.0.zip"
$ModZipPath = Join-Path $ReleaseDir $ModZipName

$GameModsDir = Join-Path $env:APPDATA "VintagestoryData\Mods"
$CentralReleasesDir = Join-Path $ModDir "..\releases"

Write-Output "=== Starting packaging for VintageChestsAndTrunks ==="

# 1. Create directories
if (-not (Test-Path $ReleaseDir)) {
    New-Item -ItemType Directory -Path $ReleaseDir | Out-Null
    Write-Output "Created release directory: $ReleaseDir"
}

if (-not (Test-Path $CentralReleasesDir)) {
    New-Item -ItemType Directory -Path $CentralReleasesDir | Out-Null
    Write-Output "Created central releases directory: $CentralReleasesDir"
}

# 2. Package mod into zip using 7z
Write-Output "Packaging files using 7z..."

# Ensure we are in the mod directory to zip from its root
Push-Location $ModDir

try {
    # Delete old zip if exists
    if (Test-Path $ModZipPath) {
        Remove-Item $ModZipPath -Force
    }

    # Run 7z
    # a: add to archive
    # -tzip: zip format
    # modinfo.json assets: files to include
    & 7z a -tzip $ModZipPath modinfo.json assets
    Write-Output "Successfully packaged mod into: $ModZipPath"
}
finally {
    Pop-Location
}

# 3. Deploy to Vintage Story Mods folder
Write-Output "Deploying to Vintage Story Mods folder..."
if (-not (Test-Path $GameModsDir)) {
    New-Item -ItemType Directory -Path $GameModsDir | Out-Null
    Write-Output "Created Game Mods directory: $GameModsDir"
}

$TargetGameZip = Join-Path $GameModsDir $ModZipName
Copy-Item $ModZipPath $TargetGameZip -Force
Write-Output "Deployed to game mods folder: $TargetGameZip"

# 4. Copy to central releases folder
$TargetCentralZip = Join-Path $CentralReleasesDir $ModZipName
Copy-Item $ModZipPath $TargetCentralZip -Force
Write-Output "Copied to central releases: $TargetCentralZip"

Write-Output "=== Build & Deploy Completed Successfully! ==="

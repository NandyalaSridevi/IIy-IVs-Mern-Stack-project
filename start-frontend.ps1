$ErrorActionPreference = "Stop"

$frontendPath = Join-Path $PSScriptRoot "FoodFrontend"

if (-not (Test-Path $frontendPath)) {
  Write-Host "FoodFrontend folder not found at: $frontendPath" -ForegroundColor Red
  exit 1
}

Set-Location $frontendPath

$pythonCommand = $null

if (Get-Command python -ErrorAction SilentlyContinue) {
  $pythonCommand = "python"
} elseif (Get-Command py -ErrorAction SilentlyContinue) {
  $pythonCommand = "py"
}

if (-not $pythonCommand) {
  Write-Host "Python is not installed or not available in PATH." -ForegroundColor Red
  Write-Host "Install Python, then run this file again." -ForegroundColor Yellow
  exit 1
}

Write-Host "Starting CraveKart frontend at http://localhost:8000" -ForegroundColor Green
Write-Host "Press Ctrl+C in this window to stop the frontend server." -ForegroundColor Yellow

& $pythonCommand -m http.server 8000

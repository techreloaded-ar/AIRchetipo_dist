param(
    [string]$Project
)

try {
    Invoke-WebRequest -Uri "https://github.com/techreloaded-ar/AIRchetipo_dist/archive/refs/heads/main.zip" -OutFile "main.zip" -ErrorAction Stop
    Expand-Archive -Path main.zip -DestinationPath . -Force
	Rename-Item -Path AIRchetipo_dist-main -NewName $Project
    Remove-Item main.zip
} catch {
    Write-Host "Errore nel download: $_"
}

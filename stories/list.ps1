# PowerShell script to list only filenames and extensions
# Target directory - modify this path as needed
$targetPath = "C:\Users\mkepr\Documents\GitHub\TheParadox\stories"

# Check if directory exists
if (-not (Test-Path $targetPath)) {
    Write-Error "Directory does not exist: $targetPath"
    exit 1
}

# Output file path
$outputFile = Join-Path $targetPath "filelist.txt"

# Get all files in the directory and save only the names to a text file
Get-ChildItem -Path $targetPath -File | ForEach-Object { $_.Name } | Out-File -FilePath $outputFile -Encoding UTF8

Write-Host "File list saved to: $outputFile" -ForegroundColor Green
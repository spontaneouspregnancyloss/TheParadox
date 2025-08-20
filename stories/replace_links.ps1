# HTML Link Replacer PowerShell Script
# Replace 'href="stories/' with 'href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/'

$folderPath = "C:\Users\mkepr\Documents\GitHub\TheParadox\stories"
$oldText = 'href="stories/'
$newText = 'href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/'

Write-Host "HTML Link Replacer" -ForegroundColor Cyan
Write-Host "==================" -ForegroundColor Cyan
Write-Host "Target folder: $folderPath"
Write-Host "Replacing: $oldText"
Write-Host "With: $newText"
Write-Host ""

# Check if folder exists
if (-Not (Test-Path $folderPath)) {
    Write-Host "Error: Folder '$folderPath' does not exist." -ForegroundColor Red
    exit
}

# Find all HTML files
$htmlFiles = Get-ChildItem -Path $folderPath -Filter "*.html"

if ($htmlFiles.Count -eq 0) {
    Write-Host "No HTML files found in '$folderPath'" -ForegroundColor Yellow
    exit
}

Write-Host "Found $($htmlFiles.Count) HTML files"

# Ask for confirmation
$response = Read-Host "Proceed with replacement? (y/N)"
if ($response -notmatch "^[Yy].*") {
    Write-Host "Operation cancelled." -ForegroundColor Yellow
    exit
}

Write-Host ""

# Initialize counters
$processedFiles = 0
$skippedBlankFiles = 0
$filesWithReplacements = 0

foreach ($file in $htmlFiles) {
    try {
        # Read file content
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        
        # Skip blank or nearly blank files
        if ([string]::IsNullOrWhiteSpace($content)) {
            Write-Host "Skipped (blank): $($file.Name)" -ForegroundColor Gray
            $skippedBlankFiles++
            continue
        }
        
        # Check if old text exists
        if ($content.Contains($oldText)) {
            # Count occurrences before replacement
            $occurrences = ($content.ToCharArray() | Where-Object {$content.IndexOf($oldText, [Array]::IndexOf($content.ToCharArray(), $_)) -ge 0}).Count
            $occurrences = [regex]::Matches($content, [regex]::Escape($oldText)).Count
            
            # Replace text
            $updatedContent = $content.Replace($oldText, $newText)
            
            # Write back to file
            Set-Content -Path $file.FullName -Value $updatedContent -Encoding UTF8
            
            Write-Host "Updated: $($file.Name) ($occurrences replacements)" -ForegroundColor Green
            $filesWithReplacements++
        } else {
            Write-Host "No changes needed: $($file.Name)" -ForegroundColor White
        }
        
        $processedFiles++
        
    } catch {
        Write-Host "Error processing $($file.Name): $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Summary
Write-Host ""
Write-Host "--- Summary ---" -ForegroundColor Cyan
Write-Host "Total HTML files found: $($htmlFiles.Count)"
Write-Host "Files processed: $processedFiles"
Write-Host "Blank files skipped: $skippedBlankFiles"
Write-Host "Files with replacements: $filesWithReplacements"
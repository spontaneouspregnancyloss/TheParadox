# PowerShell script for CSS selector and navigation div replacement
$folderPath = "C:\Users\mkepr\Documents\GitHub\TheParadox\stories"

# Replacement navigation div content
$newNavigationDiv = @"
<div class="navigation">
<div class="nav-buttons">
<a href="https://www.splproject.org" class="nav-button home">Home</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Alanis-Morissette.html" class="nav-button alanis">Alanis</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/alexandra-daddario.html" class="nav-button alexandra">Alexandra</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/alicia-vikander.html" class="nav-button alicia">Alicia</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/amanda-holden.html" class="nav-button amanda">Amanda</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Beyonce_Miscarriage.html" class="nav-button beyonce">Beyoncé</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/bethenny-frankel.html" class="nav-button bethenny">Bethenny</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Binky-Felstead.html" class="nav-button binky">Binky</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Britney-Spears.html" class="nav-button britney">Britney</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/brooke-shields.html" class="nav-button brooke">Brooke</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Carrie-Underwood.html" class="nav-button carrie">Carrie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/carrie-bickmore.html" class="nav-button carrie-b">Carrie B</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/cass-wood.html" class="nav-button cass">Cass</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Celine-Dion.html" class="nav-button celine">Celine</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/christina-perri.html" class="nav-button christina">Christina</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Chrissy_Teigen.html" class="nav-button chrissy">Chrissy</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/clay-and-jessica-walker.html" class="nav-button clay-jessica">Clay & Jessica</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Courteney-Cox.html" class="nav-button courteney">Courteney</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/dame-laura-kenny.html" class="nav-button laura">Dame Laura</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/dr-zoe-williams.html" class="nav-button zoe-dr">Dr. Zoe</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Gabrielle-Union.html" class="nav-button gabrielle">Gabrielle</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/gordon-ramsay-and-tana-ramsay.html" class="nav-button gordon-tana">Gordon & Tana</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Gwyneth-Paltrow.html" class="nav-button gwyneth">Gwyneth</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/halsey.html" class="nav-button halsey">Halsey</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/hilaria-baldwin.html" class="nav-button hilaria">Hilaria</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Hilarie_Burton.html" class="nav-button hilarie">Hilarie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Hugh-Jackman-&-Deborra-Lee-Furness.html" class="nav-button hugh-deborra">Hugh & Deborra</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/james-van-der-beek-and-kimberly.html" class="nav-button james-kimberly">James & Kimberly</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jamie-otis.html" class="nav-button jamie">Jamie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jana-kramer.html" class="nav-button jana">Jana</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jennifer-lawrence.html" class="nav-button jennifer">Jennifer</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jessica-zucker.html" class="nav-button jessica">Jessica</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jessie-j.html" class="nav-button jessie">Jessie J</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/jools-oliver.html" class="nav-button jools">Jools</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/julia-louis-dreyfus.html" class="nav-button julia">Julia</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/Kate_Mara.html" class="nav-button kate">Kate</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/kirstie-alley.html" class="nav-button kirstie">Kirstie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/kristen-doute.html" class="nav-button kristen">Kristen</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lauren.html" class="nav-button lauren">Lauren</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lily-allen.html" class="nav-button lily">Lily</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lindsay-lohan.html" class="nav-button lindsay">Lindsay</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lisa-francesca-nand.html" class="nav-button lisa-f">Lisa F</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lisa-guerrero.html" class="nav-button lisa-g">Lisa G</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/lorraine-kelly.html" class="nav-button lorraine">Lorraine</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/ludacris-and-eudoxie-mbouguiengue.html" class="nav-button ludacris-eudoxie">Ludacris & Eudoxie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/mariah-carey.html" class="nav-button mariah">Mariah</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/megan-fox.html" class="nav-button megan">Megan</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/meghan_markle.html" class="nav-button meghan">Meghan</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/michelle-obama.html" class="nav-button michelle">Michelle</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/ms-rachel.html" class="nav-button ms-rachel">Ms. Rachel</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/myleene-klass.html" class="nav-button myleene">Myleene</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/nick-carter-and-lauren-kitt.html" class="nav-button nick-lauren">Nick & Lauren</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/nick-natalie.html" class="nav-button nick">Nick & Natalie</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/nicola-sturgeon.html" class="nav-button nicola">Nicola</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/nicole-kidman.html" class="nav-button nicole">Nicole</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/olivia-bowen-and-alex-bowen.html" class="nav-button olivia-alex">Olivia & Alex</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/pnk-alecia-moore.html" class="nav-button pink">P!nk</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/priscilla-chan-and-mark-zuckerberg.html" class="nav-button priscilla-mark">Priscilla & Mark</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/rebecca-zoe.html" class="nav-button rebecca">Rebecca & Zoe</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/sammi-sweetheart-giancola.html" class="nav-button sammi">Sammi</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/sanya-richards-ross.html" class="nav-button sanya">Sanya</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/savannah-guthrie.html" class="nav-button savannah">Savannah</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/sharon-stone.html" class="nav-button sharon">Sharon</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/shay-mitchell.html" class="nav-button shay">Shay</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/tiffany-haddish.html" class="nav-button tiffany">Tiffany</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/trina-mcgee.html" class="nav-button trina">Trina</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/vanessa-grimaldi.html" class="nav-button vanessa">Vanessa</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/whitney-port.html" class="nav-button whitney">Whitney</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/zara-tindall.html" class="nav-button zara">Zara</a>
<a href="https://spontaneouspregnancyloss.github.io/TheParadox/Contradictions/index.html" class="nav-button explore">What's Your Story?</a>
</div>
</div>
"@

# New consolidated CSS selector
$newCssSelector = @"
.nav-button.alexandra,
.nav-button.alicia,
.nav-button.amanda,
.nav-button.bethenny,
.nav-button.carrie-b,
.nav-button.cass,
.nav-button.christina,
.nav-button.clay-jessica,
.nav-button.laura,
.nav-button.zoe-dr,
.nav-button.gordon-tana,
.nav-button.hilaria,
.nav-button.hugh-deborra,
.nav-button.james-kimberly,
.nav-button.jamie,
.nav-button.jana,
.nav-button.jennifer,
.nav-button.jessie,
.nav-button.jools,
.nav-button.julia,
.nav-button.kirstie,
.nav-button.kristen,
.nav-button.lily,
.nav-button.lindsay,
.nav-button.lisa-f,
.nav-button.lisa-g,
.nav-button.lorraine,
.nav-button.ludacris-eudoxie,
.nav-button.mariah,
.nav-button.megan,
.nav-button.michelle,
.nav-button.ms-rachel,
.nav-button.myleene,
.nav-button.nick-lauren,
.nav-button.nicole,
.nav-button.olivia-alex,
.nav-button.pink,
.nav-button.priscilla-mark,
.nav-button.sammi,
.nav-button.sanya,
.nav-button.savannah,
.nav-button.sharon,
.nav-button.shay,
.nav-button.tiffany,
.nav-button.trina,
.nav-button.vanessa,
.nav-button.whitney,
.nav-button.zara {
    background: linear-gradient(135deg, #ff9ff3 0%, #f368e0 100%);
}
"@

Write-Host "CSS Selector and Navigation Replacer" -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan
Write-Host "Target folder: $folderPath"
Write-Host ""
Write-Host "Operations to perform:"
Write-Host "1. Replace .nav-button CSS selectors with consolidated version"
Write-Host "2. Replace navigation div sections with updated content"
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
$response = Read-Host "Proceed with replacements? (y/N)"
if ($response -notmatch "^[Yy].*") {
    Write-Host "Operation cancelled." -ForegroundColor Yellow
    exit
}

Write-Host ""

# Initialize counters
$processedFiles = 0
$skippedBlankFiles = 0
$filesWithCssReplacements = 0
$filesWithNavRemovals = 0

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
        
        $originalContent = $content
        $changesMade = @()
        
        # 1. Replace CSS selectors - regex pattern to match .nav-button blocks
        $cssPattern = '\.nav-button\.[^,\s{]+(?:\s*,\s*\.nav-button\.[^,\s{]+)*\s*\{\s*background:\s*linear-gradient\([^}]+\}\s*'
        
        if ($content -match $cssPattern) {
            $cssMatches = [regex]::Matches($content, $cssPattern, [System.Text.RegularExpressions.RegexOptions]::Singleline)
            $content = [regex]::Replace($content, $cssPattern, $newCssSelector, [System.Text.RegularExpressions.RegexOptions]::Singleline)
            $changesMade += "$($cssMatches.Count) CSS selector blocks replaced"
            $filesWithCssReplacements++
        }
        
        # 2. Remove navigation div sections
        $navPattern = '<div class="navigation">\s*<div class="nav-buttons">.*?</div>\s*</div>'
        
        if ($content -match $navPattern) {
            $navMatches = [regex]::Matches($content, $navPattern, [System.Text.RegularExpressions.RegexOptions]::Singleline)
            $content = [regex]::Replace($content, $navPattern, $newNavigationDiv, [System.Text.RegularExpressions.RegexOptions]::Singleline)
            $changesMade += "$($navMatches.Count) navigation sections replaced"
            $filesWithNavRemovals++
        }
        
        # Write back to file if changes were made
        if ($content -ne $originalContent) {
            Set-Content -Path $file.FullName -Value $content -Encoding UTF8
            $changesText = $changesMade -join ", "
            Write-Host "Updated: $($file.Name) - $changesText" -ForegroundColor Green
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
Write-Host "Files with CSS replacements: $filesWithCssReplacements"
Write-Host "Files with navigation replacements: $filesWithNavRemovals"
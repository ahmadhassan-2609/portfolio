# GitHub Portfolio Quick Setup
# Run this after creating the repository on GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Portfolio Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Try to infer username from git config
$email = git config user.email
$username = "ahmadhassan-2609"  # Default based on email pattern

if ($email -match "(\w+)-2609") {
    $username = $matches[1] + "-2609"
}

Write-Host "Detected GitHub username: $username" -ForegroundColor Yellow
$confirm = Read-Host "Is this correct? (Y/n)"
if ($confirm -eq "n" -or $confirm -eq "N") {
    $username = Read-Host "Enter your GitHub username"
}

Write-Host ""
$repoName = Read-Host "Enter repository name (default: portfolio)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "portfolio"
}

Write-Host ""
Write-Host "Setting up remote and pushing code..." -ForegroundColor Green

# Remove existing remote if any
git remote remove origin 2>$null

# Add new remote
git remote add origin "https://github.com/$username/$repoName.git"

Write-Host "Remote added: https://github.com/$username/$repoName.git" -ForegroundColor Green

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "Success! Code pushed to GitHub" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "1. Go to: https://github.com/$username/$repoName/settings/pages" -ForegroundColor White
    Write-Host "2. Under 'Source', select: Branch 'main' / folder '/ (root)'" -ForegroundColor White
    Write-Host "3. Click Save" -ForegroundColor White
    Write-Host ""
    
    if ($repoName -eq "$username.github.io") {
        $siteUrl = "https://$username.github.io"
    } else {
        $siteUrl = "https://$username.github.io/$repoName"
    }
    
    Write-Host "Your portfolio will be live at: $siteUrl" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Error pushing to GitHub. Please:" -ForegroundColor Red
    Write-Host "1. Make sure the repository exists on GitHub" -ForegroundColor Yellow
    Write-Host "2. Check your GitHub authentication" -ForegroundColor Yellow
    Write-Host "3. Try running: git push -u origin main manually" -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Press Enter to exit"


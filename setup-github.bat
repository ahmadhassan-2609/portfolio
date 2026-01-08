@echo off
echo ========================================
echo GitHub Portfolio Setup Script
echo ========================================
echo.

set /p GITHUB_USERNAME="Enter your GitHub username: "
set /p REPO_NAME="Enter repository name (or press Enter for 'portfolio'): "

if "%REPO_NAME%"=="" set REPO_NAME=portfolio

echo.
echo Setting up repository...
echo.

REM Add remote origin
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git 2>nul
if errorlevel 1 (
    echo Remote already exists or error occurred. Removing existing remote...
    git remote remove origin
    git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
)

echo.
echo Pushing code to GitHub...
echo.

REM Push to GitHub
git push -u origin main

if errorlevel 1 (
    echo.
    echo Error: Could not push to GitHub.
    echo Please make sure:
    echo 1. The repository exists on GitHub
    echo 2. You are authenticated with GitHub (git credential helper)
    echo 3. You have write access to the repository
    echo.
    echo You may need to run: git push -u origin main manually
    pause
    exit /b 1
)

echo.
echo ========================================
echo Success! Your code has been pushed.
echo ========================================
echo.
echo Next steps:
echo 1. Go to https://github.com/%GITHUB_USERNAME%/%REPO_NAME%/settings/pages
echo 2. Under "Source", select branch: main
echo 3. Select folder: / (root)
echo 4. Click Save
echo.
echo Your site will be live at:
if "%REPO_NAME%"=="%GITHUB_USERNAME%.github.io" (
    echo https://%GITHUB_USERNAME%.github.io
) else (
    echo https://%GITHUB_USERNAME%.github.io/%REPO_NAME%
)
echo.
pause


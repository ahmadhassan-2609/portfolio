# GitHub Setup Instructions

## Quick Setup (Recommended)

### Option 1: Using the Setup Script (Windows)

1. **Create the GitHub repository first:**
   - Go to https://github.com/new
   - Repository name: `portfolio` (or `yourusername.github.io` for personal site)
   - Choose Public
   - **Don't** initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Run the setup script:**
   ```bash
   setup-github.bat
   ```

3. **Follow the prompts** - enter your GitHub username and repository name

4. **Enable GitHub Pages:**
   - Go to your repository on GitHub
   - Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main` / folder: `/ (root)`
   - Click Save

### Option 2: Manual Setup (All Platforms)

1. **Create the GitHub repository:**
   - Go to https://github.com/new
   - Repository name: `portfolio` or `yourusername.github.io`
   - Choose Public
   - **Don't** initialize with README
   - Click "Create repository"

2. **Run these commands in your terminal:**
   ```bash
   # Add remote (replace YOUR_USERNAME and REPO_NAME)
   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
   
   # Push to GitHub
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to repository → Settings → Pages
   - Source: Branch `main` / folder `/ (root)`
   - Save

## Your Portfolio URL

- If repo name is `portfolio`: `https://YOUR_USERNAME.github.io/portfolio`
- If repo name is `YOUR_USERNAME.github.io`: `https://YOUR_USERNAME.github.io`

## Troubleshooting

### Authentication Issues

If you get authentication errors:

**Windows:**
1. Install GitHub Desktop, or
2. Use Personal Access Token:
   ```bash
   git remote set-url origin https://YOUR_TOKEN@github.com/YOUR_USERNAME/REPO_NAME.git
   ```

**Create Personal Access Token:**
1. GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token with `repo` scope
3. Use token as password when pushing

### Branch Name Issues

If you get errors about branch name:
```bash
git branch -M main
git push -u origin main
```

## Next Steps

1. ✅ Add your resume PDF file (`Ahmad_Hassan_Resume.pdf`)
2. ✅ Update LinkedIn and GitHub links in `index.html` (line 340-341)
3. ✅ Test your site at the GitHub Pages URL
4. ✅ Share your portfolio!


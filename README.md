# Ahmad Hassan - Portfolio Website

A professional portfolio website showcasing my work as a Robotics Engineer and AI Researcher. Built with a Palantir-inspired dark theme and modern web technologies.

## 🌐 Live Demo

[Your GitHub Pages URL will appear here after deployment]

## ✨ Features

- **Dark Theme Design**: Professional, minimalist design inspired by Palantir's aesthetic
- **Responsive Layout**: Fully responsive design that works on all devices
- **Smooth Animations**: Intersection Observer API for scroll-triggered animations
- **Interactive Navigation**: Smooth scrolling and active section highlighting
- **Modern UI/UX**: Clean typography, subtle hover effects, and professional color scheme

## 🛠️ Technologies Used

- HTML5
- CSS3 (Custom Properties, Grid, Flexbox)
- Vanilla JavaScript (ES6+)
- Google Fonts (Inter)

## 📁 Project Structure

```
Portfolio/
├── index.html          # Main HTML file
├── styles.css          # All styling
├── script.js           # JavaScript for interactions
├── README.md           # This file
└── Ahmad_Hassan_Resume.pdf  # Resume PDF
```

## 🚀 Deployment on GitHub Pages

### Method 1: Using GitHub Web Interface

1. **Create a new repository** on GitHub (can be named `username.github.io` or any name)

2. **Upload files**:
   - Click "uploading an existing file"
   - Drag and drop all files from this folder
   - Commit the changes

3. **Enable GitHub Pages**:
   - Go to Settings → Pages
   - Under "Source", select the branch (usually `main` or `master`)
   - Select the folder (usually `/root`)
   - Click Save

4. **Your site will be live** at:
   - `https://username.github.io/repository-name` (if repository is named anything)
   - OR `https://username.github.io` (if repository is named `username.github.io`)

### Method 2: Using Git Command Line

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: Portfolio website"

# Add your GitHub repository as remote (replace with your URL)
git remote add origin https://github.com/yourusername/your-repo-name.git

# Push to GitHub
git branch -M main
git push -u origin main
```

Then enable GitHub Pages in repository settings as described above.

## 📝 Customization

### Update Personal Information

1. **Contact Information**: Edit the contact section in `index.html`
   - Update email, phone, location
   - Update LinkedIn and GitHub links

2. **Social Links**: Update the social links in the contact section:
   ```html
   <a href="https://linkedin.com/in/yourprofile" target="_blank" class="social-link">LinkedIn</a>
   <a href="https://github.com/yourusername" target="_blank" class="social-link">GitHub</a>
   ```

### Color Scheme

Edit CSS variables in `styles.css`:

```css
:root {
    --bg-primary: #0a0a0a;      /* Main background */
    --bg-secondary: #141414;    /* Section backgrounds */
    --accent: #3b82f6;          /* Accent color (blue) */
    /* ... other variables */
}
```

### Add Resume PDF

1. Place your resume PDF in the root directory
2. Update the resume link in `index.html`:
   ```html
   <a href="Your_Resume.pdf" class="btn btn-secondary" target="_blank">Download Resume</a>
   ```

## 🎨 Design Features

- **Hero Section**: Large typography with grid background animation
- **Timeline Design**: Professional timeline for experience section
- **Project Cards**: Hover effects and tag-based technology display
- **Skills Grid**: Organized skill categories with hover animations
- **Smooth Scrolling**: Enhanced user experience with smooth scroll behavior

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## 🔄 Updates & Iterations

This portfolio is designed to be easily updated. Simply edit the HTML, CSS, or JavaScript files and push changes to GitHub. GitHub Pages will automatically rebuild the site.

## 📄 License

This project is open source and available under the MIT License.

## 📧 Contact

Ahmad Hassan  
Email: hassan.ahmad@northeastern.edu  
Location: Boston, MA

---

**Note**: Make sure to update the resume PDF link and social media links before deploying!


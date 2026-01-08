# Image Integration Guide

## 🎨 Adding Images to Your Portfolio

### 1. Profile Picture

Place your profile picture in the root directory with the name: **`profile.jpg`**

**Recommended specifications:**
- Format: JPG or PNG
- Size: 500x500px (square)
- Background: Professional headshot, solid background preferred
- The image will be displayed as a circular photo in the About section

---

### 2. Baymax Image (Hero Section)

Place your Baymax image in the root directory with the name: **`baymax.png`**

**Recommended specifications:**
- Format: PNG (supports transparency)
- Size: 300-400px width
- Background: Transparent preferred
- The image will be automatically animated and displayed in the hero section

---

### 3. University Logos

Place university logos in the `logos/` folder:

| University | Filename | Recommended Content |
|------------|----------|---------------------|
| Northeastern | `logos/northeastern-logo.png` | Official Northeastern University logo |
| GIK Institute | `logos/giki-logo.png` | Official GIK Institute logo |

**Recommended specifications:**
- Format: PNG (with transparency)
- Size: 240x160px maximum
- Background: Transparent
- Quality: High resolution but optimized

---

### 4. Project Images

Place project images in the `projects/` folder with these exact names:

| Project | Image Filename | Recommended Content |
|---------|---------------|---------------------|
| DG-SLAM | `projects/dg-slam.jpg` | SLAM visualization, trajectory plots, or 3D reconstruction |
| UR5e Kinematics | `projects/ur5e-kinematics.jpg` | Robot arm images, trajectory visualization, or CAD render |
| Robotic Finger | `projects/robotic-finger.jpg` | CAD design, 3D printed prototype, or mechanism diagram |
| Assistive Arm | `projects/assistive-arm.jpg` | Robot arm in action, user interaction, or system diagram |

**Recommended specifications:**
- Format: JPG or PNG
- Dimensions: 1000x600px (16:9 aspect ratio)
- File size: Under 500KB (optimize for web)
- Quality: High resolution but compressed

---

### 5. Video Demo

Place your video in the `videos/` folder:

- **Filename**: `videos/assistive-arm-demo.mp4`
- **Format**: MP4 (H.264 codec) or WebM
- **Resolution**: 1920x1080 (1080p) or 1280x720 (720p)
- **Size**: Under 50MB recommended (optimize for web)

**Alternative**: You can also provide `assistive-arm-demo.webm` for better browser support.

---

### 6. Additional Robotics Photos

You can add any additional robotics-related photos you have. Here are some suggestions:

- Working in lab/workspace
- Building robots
- Robot demonstrations
- Team photos
- Award ceremonies
- Conference presentations

**Where to use them:**
- Add to project image containers
- Create a gallery section (if desired)
- Use as background images
- Include in About section

---

### 7. Image Optimization Tools

Before uploading, optimize your images using:
- [TinyPNG](https://tinypng.com/) - Compress PNG/JPG images
- [Squoosh](https://squoosh.app/) - Browser-based image optimization
- [ImageOptim](https://imageoptim.com/) - Desktop tool for Mac
- [HandBrake](https://handbrake.fr/) - Video compression

---

### 8. File Structure

Your final file structure should look like:

```
Portfolio/
├── profile.jpg                 # Your profile picture
├── baymax.png                  # Baymax image
├── logos/
│   ├── northeastern-logo.png   # Northeastern logo
│   └── giki-logo.png          # GIK Institute logo
├── projects/
│   ├── dg-slam.jpg            # DG-SLAM project image
│   ├── ur5e-kinematics.jpg    # UR5e project image
│   ├── robotic-finger.jpg     # Robotic Finger image
│   └── assistive-arm.jpg      # Assistive Arm image
└── videos/
    └── assistive-arm-demo.mp4 # Video demonstration
```

---

### 9. Updating GitHub Repository

After adding all images and videos:

```bash
git add profile.jpg baymax.png logos/*.png projects/*.jpg videos/*.mp4
git commit -m "Add profile picture, logos, project images, and video demo"
git push
```

---

## Current Status

✅ Image placeholders configured  
✅ Profile picture section ready  
✅ University logo sections ready  
✅ Video modal implemented  
✅ CSS animations ready  
✅ Responsive image display set up  
⏳ Waiting for images to be added

Once you add the images, they'll automatically appear with:
- Hover effects on project cards
- Smooth animations
- Responsive scaling
- Professional presentation
- Video modal functionality

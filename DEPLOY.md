# Deployment Guide

## Quick Deploy to GitHub Pages

The repository has been restructured and is ready for deployment. Follow these steps:

### 1. Verify Local Structure

```bash
cd rizzcapture.com

# Check the structure
ls -la

# You should see:
# - assets/ (css, js, images folders)
# - archive/ (documentation)
# - *.html files at root
# - README.md
# - Other config files
```

### 2. Test Locally (Optional but Recommended)

```bash
# Start a local server
python3 -m http.server 8000

# Open in browser
# Visit: http://localhost:8000

# Test:
# - Homepage loads correctly
# - Philosophy page works
# - All framework pages load
# - Images display properly
# - Navigation works
# - Responsive design on mobile
```

### 3. Commit All Changes

```bash
# Check status
git status

# Add all changes
git add .

# Commit with descriptive message
git commit -m "Restructure repository and add philosophy page

Major changes:
- Reorganized into standard static website structure
- Created assets/ folder (css/, js/, images/)
- Archived documentation and utilities
- Updated all HTML files with new asset paths
- Added comprehensive philosophy.html page
- Created detailed README.md
- Maintained GitHub Pages compatibility

Philosophy page includes:
- 10+ years of Riz Capture methodology
- Digital Temperance framework
- Platform Graduation (LinkedIn → Instagram → X)
- Information Management Systems
- Jefferson.Cloud ecosystem integration

All files verified and ready for production."

# Push to GitHub
git push origin main
```

### 4. Verify Deployment

After pushing, GitHub Pages will automatically rebuild (takes 2-5 minutes):

1. Go to your repository on GitHub
2. Click "Settings" → "Pages"
3. Verify the site is published
4. Visit your live URL

### 5. Test Live Site

Visit your site and verify:

- ✅ Homepage loads
- ✅ Philosophy page accessible
- ✅ All framework pages work
- ✅ Images display correctly
- ✅ CSS styles applied
- ✅ JavaScript functions work
- ✅ Navigation links work
- ✅ Mobile responsive
- ✅ Custom domain (if configured)

## File Structure Summary

```
rizzcapture.com/
├── assets/
│   ├── css/
│   │   ├── styles.css
│   │   └── philosophy-section-styles.css
│   ├── js/
│   │   └── script.js
│   └── images/
│       ├── rizz-capture-logo.png
│       ├── favicon.ico
│       └── *.svg icons
├── archive/
│   └── [documentation and utilities]
├── index.html
├── philosophy.html
├── [framework pages].html
├── README.md
└── [config files]
```

## What Changed

### Assets Organized
- CSS files → `assets/css/`
- JavaScript → `assets/js/`
- Images → `assets/images/`

### Documentation Archived
- Historical notes → `archive/`
- Utility scripts → `archive/`
- Integration summaries → `archive/`

### Paths Updated
All HTML files now reference:
- `assets/css/styles.css`
- `assets/js/script.js`
- `assets/images/[filename]`

### New Content
- **philosophy.html** - Comprehensive methodology philosophy
- **README.md** - Complete project documentation
- **DEPLOY.md** - This deployment guide

## Troubleshooting

### Images Not Loading
- Check browser console for 404 errors
- Verify paths in HTML: `assets/images/[filename]`
- Clear browser cache

### CSS Not Applied
- Check browser console for CSS errors
- Verify path: `assets/css/styles.css`
- Hard refresh: Cmd+Shift+R (Mac) or Ctrl+Shift+R (Windows)

### JavaScript Not Working
- Check browser console for JS errors
- Verify path: `assets/js/script.js`
- Ensure script tag at end of body

### GitHub Pages Not Building
- Check repository Settings → Pages
- Verify branch is set to `main`
- Check for build errors in Actions tab
- Wait 5-10 minutes for propagation

## Custom Domain (if applicable)

If using custom domain (rizzcapture.com):

1. CNAME file exists at root ✅
2. DNS configured with your provider
3. GitHub Pages settings point to custom domain
4. HTTPS enabled in settings

## Support

For issues:
- Check `archive/` folder for detailed documentation
- Review README.md for structure details
- Verify all paths in HTML files
- Test locally before deploying

---

**Status**: ✅ Repository restructured and ready for deployment  
**Date**: March 3, 2026  
**Action Required**: Commit and push to deploy

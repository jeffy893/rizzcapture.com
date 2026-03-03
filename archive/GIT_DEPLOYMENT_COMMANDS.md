# Git Deployment Commands for Philosophy Page Integration

## Quick Deployment

Copy and paste these commands to deploy the philosophy page to GitHub Pages:

```bash
# Navigate to the rizzcapture.com directory
cd rizzcapture.com

# Check current status
git status

# Add all new and modified files
git add philosophy.html
git add philosophy-section-styles.css
git add philosophy-section-propagation.html
git add index.html
git add 7ps-marketing-mix.html
git add ansoff-matrix.html
git add bourdieu-distinction.html
git add pestel.html
git add porters-five-forces.html
git add sitemap.xml
git add PHILOSOPHY_INTEGRATION_SUMMARY.md
git add verify_integration.sh
git add GIT_DEPLOYMENT_COMMANDS.md

# Commit with descriptive message
git commit -m "Add philosophy page: Digital Temperance & Platform Graduation

- Created comprehensive philosophy.html documenting 10+ year methodology development
- Added philosophy-section-styles.css with full responsive design
- Integrated navigation links across all pages (index + 5 framework pages)
- Updated sitemap.xml with philosophy page entry
- Documented: Grassroots Riz Capture, Snub Realization, Digital Temperance
- Detailed platform graduation: LinkedIn (2018-2024), Instagram (2024-2025), X (March 2026)
- Included strategic details: Loomly scheduling, 100/60 ratio, no app on phone
- Mapped philosophy to four-stage framework (Input/Analysis/Strategy/Action)
- Ready for GitHub Pages deployment"

# Push to GitHub
git push origin main

# Verify deployment
echo "Deployment complete! Check your GitHub Pages site in a few minutes."
echo "URL: https://[your-username].github.io/rizzcapture.com/philosophy.html"
```

## Alternative: Add All at Once

If you prefer to add all files at once:

```bash
cd rizzcapture.com
git add .
git commit -m "Add philosophy page: Digital Temperance & Platform Graduation"
git push origin main
```

## Verify Before Pushing

To see what will be committed:

```bash
git status
git diff --cached
```

## After Deployment

1. Wait 2-5 minutes for GitHub Pages to build
2. Visit your site: `https://[your-username].github.io/rizzcapture.com/`
3. Click "Philosophy" in the navigation
4. Test all links and responsive design
5. Share the new page!

## Rollback (if needed)

If you need to undo the changes:

```bash
git reset --soft HEAD~1  # Undo commit but keep changes
# or
git reset --hard HEAD~1  # Undo commit and discard changes
```

## Files Added/Modified Summary

### New Files (3)
- philosophy.html (main page)
- philosophy-section-styles.css (styling)
- philosophy-section-propagation.html (component)

### Modified Files (7)
- index.html (added philosophy nav link)
- 7ps-marketing-mix.html (added philosophy to related frameworks)
- ansoff-matrix.html (added philosophy to related frameworks)
- bourdieu-distinction.html (added philosophy to related frameworks)
- pestel.html (added philosophy to related frameworks)
- porters-five-forces.html (added philosophy to related frameworks)
- sitemap.xml (added philosophy page entry)

### Documentation Files (3)
- PHILOSOPHY_INTEGRATION_SUMMARY.md (this integration summary)
- verify_integration.sh (verification script)
- GIT_DEPLOYMENT_COMMANDS.md (deployment guide)

---

**Total Files**: 13 files ready for deployment
**Status**: ✅ Verified and ready to push

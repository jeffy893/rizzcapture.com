# Deployment Guide for RizzCapture

## GitHub Pages Deployment

### Method 1: Automatic Deployment (Recommended)

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Initial RizCapture website"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to your repository settings
   - Navigate to "Pages" section
   - Under "Source", select "GitHub Actions"
   - The workflow will automatically deploy your site

3. **Update Configuration:**
   - Edit `_config.yml` and replace `username` with your GitHub username
   - Update `sitemap.xml` and `robots.txt` with your actual GitHub Pages URL

### Method 2: Manual Deployment

1. **Enable GitHub Pages:**
   - Go to repository settings → Pages
   - Select "Deploy from a branch"
   - Choose "main" branch and "/ (root)" folder

2. **Your site will be available at:**
   `https://[username].github.io/rizzcapture.com/`

## Local Development

To test locally, you can use Python's built-in server:

```bash
# Navigate to the project directory
cd rizzcapture.com

# Start local server (Python 3.10)
python3.10 -m http.server 8000

# Open in browser
open http://localhost:8000
```

## Custom Domain (Optional)

1. Add a `CNAME` file with your domain:
   ```bash
   echo "yourdomain.com" > CNAME
   ```

2. Configure DNS with your domain provider:
   - Add CNAME record pointing to `[username].github.io`

## Performance Optimization

The site is already optimized for performance:
- ✅ Minified CSS and JavaScript
- ✅ Optimized images (SVG graphics)
- ✅ Responsive design
- ✅ Semantic HTML for SEO
- ✅ Fast loading fonts (Inter from Google Fonts)

## SEO Configuration

Update these files with your actual URLs:
- `_config.yml` - GitHub Pages configuration
- `sitemap.xml` - Search engine sitemap
- `robots.txt` - Search engine instructions

## Monitoring

After deployment, you can:
- Monitor traffic with Google Analytics (add tracking code to `index.html`)
- Check performance with Google PageSpeed Insights
- Verify SEO with Google Search Console

## Troubleshooting

**Site not loading?**
- Check GitHub Actions tab for deployment errors
- Ensure repository is public or you have GitHub Pro
- Verify GitHub Pages is enabled in settings

**Styling issues?**
- Clear browser cache
- Check browser developer tools for CSS errors
- Ensure all file paths are relative

**Mobile issues?**
- Test responsive design with browser dev tools
- Check viewport meta tag is present
- Verify touch interactions work properly
#!/bin/bash

# Update all HTML files to use new asset paths

echo "Updating asset paths in all HTML files..."

# List of HTML files to update
html_files=(
    "7ps-marketing-mix.html"
    "ansoff-matrix.html"
    "bourdieu-distinction.html"
    "pestel.html"
    "philosophy.html"
    "porters-five-forces.html"
    "404.html"
)

for file in "${html_files[@]}"; do
    if [ -f "$file" ]; then
        echo "Updating $file..."
        
        # Update CSS paths
        sed -i.bak 's|href="styles\.css|href="assets/css/styles.css|g' "$file"
        sed -i.bak 's|href="philosophy-section-styles\.css|href="assets/css/philosophy-section-styles.css|g' "$file"
        
        # Update JS paths
        sed -i.bak 's|src="script\.js"|src="assets/js/script.js"|g' "$file"
        
        # Update image paths
        sed -i.bak 's|href="favicon\.ico"|href="assets/images/favicon.ico"|g' "$file"
        sed -i.bak 's|href="rizz-capture-logo\.png"|href="assets/images/rizz-capture-logo.png"|g' "$file"
        sed -i.bak 's|src="rizz-capture-logo\.png"|src="assets/images/rizz-capture-logo.png"|g' "$file"
        
        # Update Open Graph and Twitter Card image paths
        sed -i.bak 's|content="https://rizzcapture\.com/rizz-capture-logo\.png"|content="https://rizzcapture.com/assets/images/rizz-capture-logo.png"|g' "$file"
        
        # Remove backup files
        rm -f "${file}.bak"
        
        echo "  ✓ $file updated"
    fi
done

echo ""
echo "All HTML files updated successfully!"

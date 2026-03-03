#!/bin/bash

# Philosophy Page Integration Verification Script
# Run this script to verify all files are in place and properly linked

echo "========================================="
echo "Philosophy Page Integration Verification"
echo "========================================="
echo ""

# Check if required files exist
echo "1. Checking for required files..."
files=(
    "philosophy.html"
    "philosophy-section-styles.css"
    "philosophy-section-propagation.html"
)

all_files_exist=true
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "   ✓ $file exists"
    else
        echo "   ✗ $file MISSING"
        all_files_exist=false
    fi
done
echo ""

# Check for philosophy links in navigation
echo "2. Checking navigation links..."
nav_files=(
    "index.html"
    "7ps-marketing-mix.html"
    "ansoff-matrix.html"
    "bourdieu-distinction.html"
    "pestel.html"
    "porters-five-forces.html"
)

for file in "${nav_files[@]}"; do
    if grep -q "philosophy.html" "$file"; then
        echo "   ✓ $file contains philosophy link"
    else
        echo "   ✗ $file missing philosophy link"
    fi
done
echo ""

# Check sitemap
echo "3. Checking sitemap.xml..."
if grep -q "philosophy.html" "sitemap.xml"; then
    echo "   ✓ sitemap.xml includes philosophy.html"
else
    echo "   ✗ sitemap.xml missing philosophy.html"
fi
echo ""

# Check CSS link in philosophy.html
echo "4. Checking CSS references..."
if grep -q "philosophy-section-styles.css" "philosophy.html"; then
    echo "   ✓ philosophy.html links to philosophy-section-styles.css"
else
    echo "   ✗ philosophy.html missing CSS link"
fi
echo ""

# Summary
echo "========================================="
if [ "$all_files_exist" = true ]; then
    echo "✓ All required files are present"
    echo "✓ Integration appears complete"
    echo ""
    echo "Next steps:"
    echo "1. Open philosophy.html in your browser"
    echo "2. Test all navigation links"
    echo "3. Verify responsive design on mobile"
    echo "4. Commit and push to GitHub"
else
    echo "✗ Some files are missing"
    echo "Please review the integration"
fi
echo "========================================="

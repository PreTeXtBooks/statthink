#!/bin/bash
# Post-build script to inject custom JavaScript and CSS into HTML files

OUTPUT_DIR="output/web"

# Define the custom CSS and JS to inject
CSS_LINK='<link href="external/custom-program-toggle.css" rel="stylesheet" type="text/css">'
JS_SCRIPT='<script src="external/custom-program-toggle.js"></script>'

# Find all HTML files and inject the custom CSS and JS
find "$OUTPUT_DIR" -name "*.html" -type f | while read -r file; do
    # Check if the file contains program elements
    if grep -q 'class="program"' "$file"; then
        # Inject CSS before </head>
        if ! grep -q "custom-program-toggle.css" "$file"; then
            sed -i "s|</head>|$CSS_LINK\n</head>|" "$file"
        fi
        
        # Inject JS before </body>
        if ! grep -q "custom-program-toggle.js" "$file"; then
            sed -i "s|</body>|$JS_SCRIPT\n</body>|" "$file"
        fi
    fi
done

echo "Custom CSS and JS injected into HTML files with R code"

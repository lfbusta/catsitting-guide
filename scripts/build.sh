#!/bin/bash

# Create the build folder if it doesn't exist
mkdir -p dist

# Minify the HTML and JS
npx html-minifier --collapse-whitespace --remove-comments --minify-js true --input-dir ./src --output-dir ./dist --ignore-extensions .css

# Compile the Tailwind CSS and minify it
npx tailwindcss -i ./src/styles.css -o ./dist/styles.css --minify
#!/bin/bash

# Create the build folder if it doesn't exist
mkdir -p docs

# Minify the HTML and JS
# NOTE: This command for some reason still grabs tailwind's css files. Even though it shouldn't.
npx html-minifier --collapse-whitespace --remove-comments --input-dir ./src --output-dir ./docs

# Compile the Tailwind CSS and minify it
npx tailwindcss -i ./src/styles.css -o ./docs/styles.css --minify
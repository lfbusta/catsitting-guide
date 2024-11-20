#!/bin/bash

# Create the build folder if it doesn't exist
mkdir -p docs

# Move index.html file to docs.
cp ./src/index.html ./docs/index.html

# Compile the Tailwind CSS and minify it
npx tailwindcss -i ./src/styles.css -o ./docs/styles.css --minify
#!/bin/bash

# Watch for changes in the src folder
chokidar "src/**/*.{html,css}" -c "npm run build"
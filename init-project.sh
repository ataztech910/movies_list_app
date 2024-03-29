#!/bin/bash

# Create nextjs folder if it doesn't exist
mkdir -p nextjs

# Check if the nextjs folder is empty
if [ -z "$(ls -A nextjs)" ]; then
    # Initialize Next.js project inside nextjs folder
    echo "Initializing Next.js project..."
    npx create-next-app nextjs
else
    echo "The 'nextjs' folder is not empty. Skipping initialization of Next.js project."
fi

# Create strapi folder if it doesn't exist
mkdir -p strapi

# Check if the strapi folder is empty
if [ -z "$(ls -A strapi)" ]; then
    # Initialize Strapi project inside strapi folder
    echo "Initializing Strapi project..."
    npx create-strapi-app@latest strapi --quickstart
else
    echo "The 'strapi' folder is not empty. Skipping initialization of Strapi project."
fi

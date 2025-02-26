#!/bin/bash

# Colors for terminal output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Create a New Blog Post ===${NC}"
echo

# Get post title
read -p "Enter post title: " title

if [ -z "$title" ]; then
    echo -e "${YELLOW}Error: Title cannot be empty${NC}"
    exit 1
fi

# Generate slug from title
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:] ' | tr ' ' '-')

# Get today's date
date=$(date +%Y-%m-%d)

# Create filename
filename="_posts/${date}-${slug}.md"

# Check if file already exists
if [ -f "$filename" ]; then
    echo -e "${YELLOW}Error: A post with this name already exists for today's date${NC}"
    exit 1
fi

# Get additional metadata
read -p "Enter subtitle (optional): " subtitle
read -p "Enter tags (comma-separated): " tags
read -p "Enter abstract: " abstract
read -p "Include table of contents? (y/n): " toc
read -p "Include math support? (y/n): " math
read -p "Status (draft/finished): " status
read -p "Confidence (low/medium/high/likely/certain): " confidence
read -p "Importance (1-5): " importance

# Format tags
if [ ! -z "$tags" ]; then
    formatted_tags="["
    IFS=',' read -ra tag_array <<< "$tags"
    for i in "${!tag_array[@]}"; do
        tag=$(echo "${tag_array[$i]}" | xargs)
        formatted_tags+="$tag"
        if [ $i -lt $((${#tag_array[@]}-1)) ]; then
            formatted_tags+=", "
        fi
    done
    formatted_tags+="]"
else
    formatted_tags="[]"
fi

# Convert y/n to true/false
if [ "$toc" = "y" ] || [ "$toc" = "Y" ]; then
    toc="true"
else
    toc="false"
fi

if [ "$math" = "y" ] || [ "$math" = "Y" ]; then
    math="true"
else
    math="false"
fi

# Create the post file
mkdir -p _posts
cat > "$filename" << EOF
---
layout: post
title: "$title"
subtitle: "$subtitle"
date: $date
last_modified_at: $date
status: "$status"
confidence: "$confidence"
importance: $importance
abstract: "$abstract"
tags: $formatted_tags
toc: $toc
math: $math
---

Write your post content here. Use Markdown formatting.

## First Section

Your content goes here.

## Second Section

More content here.
EOF

echo -e "${GREEN}Post created: ${BLUE}$filename${NC}"
echo -e "Edit this file to add your content."
echo -e "Run ${YELLOW}./serve.sh --drafts${NC} to preview your post locally."

exit 0 
#!/bin/bash

# Colors for terminal output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Deploying to GitHub Pages ===${NC}"
echo

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}Error: Git is not installed. Please install Git first.${NC}"
    exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo -e "${YELLOW}This directory is not a Git repository. Initializing...${NC}"
    git init
    
    # Check if initialization was successful
    if [ ! -d ".git" ]; then
        echo -e "${RED}Failed to initialize Git repository.${NC}"
        exit 1
    fi
fi

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo -e "${YELLOW}No remote repository found. Please enter your GitHub repository URL:${NC}"
    read -p "GitHub repository URL (e.g., https://github.com/username/username.github.io.git): " repo_url
    
    if [ -z "$repo_url" ]; then
        echo -e "${RED}No repository URL provided. Exiting.${NC}"
        exit 1
    fi
    
    git remote add origin "$repo_url"
    echo -e "${GREEN}Remote repository added.${NC}"
fi

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo -e "${YELLOW}You have uncommitted changes.${NC}"
    
    # Ask to commit changes
    read -p "Do you want to commit all changes? (y/n): " commit_changes
    
    if [ "$commit_changes" = "y" ] || [ "$commit_changes" = "Y" ]; then
        # Ask for commit message
        read -p "Enter commit message: " commit_message
        
        if [ -z "$commit_message" ]; then
            commit_message="Update site content"
        fi
        
        # Add and commit changes
        git add .
        git commit -m "$commit_message"
        
        if [ $? -ne 0 ]; then
            echo -e "${RED}Failed to commit changes.${NC}"
            exit 1
        fi
        
        echo -e "${GREEN}Changes committed.${NC}"
    else
        echo -e "${YELLOW}Deployment cancelled. Please commit your changes first.${NC}"
        exit 1
    fi
fi

# Check which branch we're on
current_branch=$(git symbolic-ref --short HEAD 2>/dev/null)

# If we're not on the main branch, ask to switch
if [ "$current_branch" != "main" ] && [ "$current_branch" != "master" ]; then
    echo -e "${YELLOW}You are currently on branch '$current_branch'.${NC}"
    read -p "Do you want to switch to the main branch? (y/n): " switch_branch
    
    if [ "$switch_branch" = "y" ] || [ "$switch_branch" = "Y" ]; then
        # Check if main branch exists
        if git show-ref --verify --quiet refs/heads/main; then
            git checkout main
        elif git show-ref --verify --quiet refs/heads/master; then
            git checkout master
        else
            # Create main branch
            git checkout -b main
        fi
        
        if [ $? -ne 0 ]; then
            echo -e "${RED}Failed to switch branch.${NC}"
            exit 1
        fi
        
        echo -e "${GREEN}Switched to main branch.${NC}"
    fi
fi

# Push to GitHub
echo -e "${BLUE}Pushing to GitHub...${NC}"
git push -u origin HEAD

if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to push to GitHub. Please check your repository settings.${NC}"
    exit 1
fi

echo -e "${GREEN}Successfully pushed to GitHub!${NC}"
echo -e "${BLUE}Your site should be available at: ${GREEN}https://isaacaudet.com${NC}"
echo -e "${BLUE}It may take a few minutes for changes to appear.${NC}"

exit 0 
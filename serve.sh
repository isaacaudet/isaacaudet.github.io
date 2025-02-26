#!/bin/bash

# Colors for terminal output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Isaac Audet's Blog - Local Development ===${NC}"

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo -e "${YELLOW}Ruby is not installed. Please install Ruby 2.5.0 or higher.${NC}"
    echo "Visit: https://www.ruby-lang.org/en/documentation/installation/"
    exit 1
fi

# Check Ruby version
ruby_version=$(ruby -v | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1)
required_version="2.5.0"

if [ "$(printf '%s\n' "$required_version" "$ruby_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo -e "${YELLOW}Ruby version $ruby_version is too old. Jekyll requires version $required_version or higher.${NC}"
    exit 1
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo -e "${YELLOW}Bundler is not installed. Installing now...${NC}"
    gem install bundler
    if [ $? -ne 0 ]; then
        echo -e "${YELLOW}Failed to install Bundler. Try running: sudo gem install bundler${NC}"
        exit 1
    fi
fi

# Install dependencies if needed
if [ ! -d "vendor/bundle" ]; then
    echo -e "${BLUE}Installing dependencies...${NC}"
    bundle install --path vendor/bundle
    if [ $? -ne 0 ]; then
        echo -e "${YELLOW}Failed to install dependencies. Check the error messages above.${NC}"
        exit 1
    fi
fi

# Parse command line arguments
DRAFTS=""
LIVERELOAD=""
PORT="4000"

for arg in "$@"; do
    case $arg in
        --drafts)
            DRAFTS="--drafts"
            shift
            ;;
        --livereload)
            LIVERELOAD="--livereload"
            shift
            ;;
        --port=*)
            PORT="${arg#*=}"
            shift
            ;;
    esac
done

echo -e "${GREEN}Starting Jekyll server...${NC}"
echo -e "${BLUE}Your site will be available at: ${GREEN}http://localhost:$PORT${NC}"
echo -e "${BLUE}Press Ctrl+C to stop the server${NC}"

# Run Jekyll
bundle exec jekyll serve --port $PORT $DRAFTS $LIVERELOAD

exit 0 
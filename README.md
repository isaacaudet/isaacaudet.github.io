# Isaac Audet's Blog

This is the source code for my personal blog at [isaacaudet.com](https://isaacaudet.com), hosted on GitHub Pages.

## Overview

This blog is built with [Jekyll](https://jekyllrb.com/), a static site generator, and hosted on [GitHub Pages](https://pages.github.com/). It features a clean, elegant design with a focus on typography and readability, inspired by sites like Gwern.net.

## Features

- **Elegant Typography**: Carefully crafted typography using Inter, Merriweather, and JetBrains Mono fonts
- **Dark Mode**: Automatic dark mode based on system preferences with manual toggle
- **Responsive Design**: Looks great on all devices from mobile to desktop
- **Reading Progress Bar**: Visual indicator of reading progress
- **Table of Contents**: Automatically generated for posts
- **Sidenotes**: Support for sidenotes in posts (similar to footnotes but visible inline)
- **Reading Time Estimate**: Automatically calculated based on word count
- **Social Sharing**: Easy sharing of posts to Twitter, LinkedIn, and via email
- **Categories & Tags**: Organized content with category and tag pages
- **Animations**: Subtle animations for a more engaging experience
- **SEO Optimized**: Built-in SEO tag support

## Local Development

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/) (version 2.5.0 or higher)
- [RubyGems](https://rubygems.org/pages/download)
- [Bundler](https://bundler.io/)

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/isaacaudet/isaacaudet.github.io.git
   cd isaacaudet.github.io
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run the site locally:
   ```bash
   bundle exec jekyll serve
   ```

4. Open your browser and visit `http://localhost:4000`

## Creating New Posts

To create a new blog post, add a new Markdown file to the `_posts` directory with the following naming convention:

```
YYYY-MM-DD-title-of-your-post.md
```

At the top of each post, include the YAML front matter:

```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -0500
categories: [category1, category2]
tags: [tag1, tag2, tag3]
---
```

Then write your post content in Markdown format.

### Special Features

#### Table of Contents

The table of contents is automatically generated for all posts. If you want to disable it for a specific post, add `toc: false` to the front matter.

#### Sidenotes

To add a sidenote to your post, use the following HTML:

```html
<div class="sidenote-wrapper">
  <span class="sidenote-ref">1</span>
  <div class="sidenote">
    This is a sidenote that will appear to the side on desktop and inline on mobile.
  </div>
</div>
```

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the main branch.

### Setting up GitHub Pages

1. Create a repository named `username.github.io` (where username is your GitHub username)
2. Push this code to that repository
3. Go to the repository settings, navigate to "Pages"
4. Select the main branch as the source
5. Your site will be published at `https://username.github.io`

### Custom Domain (Optional)

To use a custom domain like isaacaudet.com:

1. Create a file named `CNAME` in the root directory with your domain name
2. Update your domain's DNS settings to point to GitHub Pages
3. Configure the custom domain in your GitHub repository settings

## Customization

- Edit `_config.yml` to change site settings
- Modify files in `_layouts` to change the site structure
- Update CSS in `assets/css/main.css` to change the site appearance
- Add new pages by creating Markdown or HTML files in the root directory

## License

This project is open source and available under the [MIT License](LICENSE). 
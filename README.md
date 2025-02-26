# Isaac Audet's Blog

This is the source code for my personal blog at [isaacaudet.com](https://isaacaudet.com), hosted on GitHub Pages.

## Overview

This blog is built with [Jekyll](https://jekyllrb.com/), a static site generator, and hosted on [GitHub Pages](https://pages.github.com/).

## Running Locally

To run this blog locally on your machine, follow these steps:

### Prerequisites

1. **Ruby**: Jekyll requires Ruby version 2.5.0 or higher.
   - Check your Ruby version with `ruby -v`
   - Install Ruby from [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/) if needed

2. **Bundler**: This manages Ruby gem dependencies.
   - Install with `gem install bundler`
   - Verify installation with `bundler -v`

### Setup and Run

1. **Clone the repository** (if you haven't already):
   ```bash
   git clone https://github.com/yourusername/isaacaudet.com.git
   cd isaacaudet.com
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Start the local server**:
   ```bash
   bundle exec jekyll serve
   ```

4. **View your site** at [http://localhost:4000](http://localhost:4000)

### Development Options

- **Live reload**: Add `--livereload` to automatically refresh the page when files change:
  ```bash
  bundle exec jekyll serve --livereload
  ```

- **Draft posts**: Add `--drafts` to include posts in the `_drafts` folder:
  ```bash
  bundle exec jekyll serve --drafts
  ```

- **Incremental build**: Add `--incremental` for faster builds when making small changes:
  ```bash
  bundle exec jekyll serve --incremental
  ```

### Troubleshooting

- **Missing dependencies**: If you see errors about missing gems, run `bundle install` again
- **Port conflicts**: If port 4000 is in use, specify a different port with `--port`:
  ```bash
  bundle exec jekyll serve --port 4001
  ```
- **Permission issues**: On some systems, you might need to use `sudo` for gem installation

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

## License

This project is open source and available under the [MIT License](LICENSE). 
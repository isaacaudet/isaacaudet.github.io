# Blog Writing Guide

This guide will help you create and format blog posts for your Jekyll-based website.

## Creating a New Post

1. Create a new Markdown file in the `_posts` directory
2. Name it using the format: `YYYY-MM-DD-title-of-your-post.md`
3. Add the required front matter (metadata) at the top of the file

## Front Matter

Every post must begin with front matter - a YAML block that sets metadata for the post:

```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -0500
categories: [category1, category2]
tags: [tag1, tag2, tag3]
---
```

- **layout**: Always use "post" for blog posts
- **title**: The title of your post (in quotes)
- **date**: Publication date and time (with timezone)
- **categories**: Main topics (used for organization)
- **tags**: More specific keywords

## Markdown Formatting

### Headers

```markdown
# Header 1 (post title, don't use in content)
## Header 2 (main sections)
### Header 3 (subsections)
#### Header 4 (rarely needed)
```

### Text Formatting

```markdown
*Italic text*
**Bold text**
~~Strikethrough~~
```

### Links

```markdown
[Link text](https://example.com)
```

### Images

```markdown
![Alt text](https://example.com/image.jpg)
```

For local images, place them in the `assets/images/` directory and reference them:

```markdown
![Alt text](/assets/images/your-image.jpg)
```

### Lists

Unordered list:
```markdown
- Item 1
- Item 2
  - Subitem 2.1
  - Subitem 2.2
```

Ordered list:
```markdown
1. First item
2. Second item
   1. Subitem 2.1
   2. Subitem 2.2
```

### Blockquotes

```markdown
> This is a blockquote.
> 
> It can span multiple paragraphs.
```

### Code

Inline code: `` `code` ``

Code block with syntax highlighting:
````markdown
```python
def hello_world():
    print("Hello, world!")
```
````

### Horizontal Rule

```markdown
---
```

## Best Practices

1. **Keep paragraphs short** - 3-4 sentences maximum
2. **Use headers to organize** - Make your content scannable
3. **Include images** - Visual content improves engagement
4. **Link to sources** - Always cite external information
5. **Preview before publishing** - Check how your post looks
6. **Use descriptive alt text** - Make images accessible
7. **Be consistent with style** - Maintain a unified voice

## Publishing Workflow

1. Write your post in Markdown
2. Add front matter with appropriate categories and tags
3. Save the file in the `_posts` directory
4. Commit and push to GitHub
5. GitHub Pages will automatically build and deploy your site

## Example Post Structure

```markdown
---
layout: post
title: "How to Write Great Blog Posts"
date: 2023-01-20 10:00:00 -0500
categories: [writing, blogging]
tags: [tips, markdown, content]
---

Introduction paragraph that hooks the reader and explains what the post is about.

## First Main Point

Content explaining your first main point.

### Supporting Detail

More specific information supporting your main point.

## Second Main Point

Content for your second main point.

![Relevant Image](/assets/images/example.jpg)

## Conclusion

Summarize the key takeaways and possibly include a call to action.
``` 
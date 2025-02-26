---
layout: post
title: "Semantic Zoom in Web Design"
subtitle: "A hypertext approach to managing complexity"
date: 2023-05-01
last_modified_at: 2023-05-15
status: "finished"
confidence: "likely"
importance: 3
abstract: "This post explores the concept of semantic zoom in web design, a technique for progressively revealing content based on user interest. Unlike traditional hypertext which forces readers to navigate between many small pages, semantic zoom allows a single page to contain multiple levels of detail that can be expanded or collapsed as needed."
tags: [web-design, hypertext, ux]
toc: true
math: true
popups:
  - id: "popup-nelson"
    title: "Ted Nelson"
    content: "Theodor Holm Nelson (born June 17, 1937) is an American pioneer of information technology, philosopher, and sociologist. He coined the terms hypertext and hypermedia in 1963 and published them in 1965. Nelson coined the terms transclusion, virtuality, and intertwingularity."
  - id: "popup-stretchtext"
    title: "StretchText"
    content: "StretchText is a form of hypertext in which the reader can control the level of detail by 'stretching' or 'shrinking' the text. It was conceived by Ted Nelson in the 1960s as part of his Project Xanadu."
bibliography:
  - title: "Literary Machines"
    author: "Ted Nelson"
    year: 1981
    url: "https://en.wikipedia.org/wiki/Literary_Machines"
    popup_id: "popup-nelson"
  - title: "As We May Think"
    author: "Vannevar Bush"
    year: 1945
    url: "https://www.theatlantic.com/magazine/archive/1945/07/as-we-may-think/303881/"
  - title: "Design Of This Website"
    author: "Gwern Branwen"
    year: 2023
    url: "https://gwern.net/design"
similar_links:
  - title: "Progressive Disclosure in User Interfaces"
    url: "#"
    description: "How to reveal information progressively to avoid overwhelming users"
  - title: "The History of Hypertext"
    url: "#"
    description: "From Memex to the World Wide Web"
backlinks:
  - title: "Designing for Information Density"
    url: "#"
    context: "The concept of semantic zoom, as discussed in 'Semantic Zoom in Web Design', provides a solution to the problem of information overload while maintaining context."
  - title: "Modern Approaches to Technical Documentation"
    url: "#"
    context: "Technical documentation can benefit from semantic zoom techniques to accommodate both beginners and advanced users within the same document."
---

<div class="epigraph">
  <p class="epigraph-text">The problem with the web is that it's too flat. We need ways to add depth to our information spaces.</p>
  <p class="epigraph-source">— Ted Nelson</p>
</div>

How should we present complex information online? This question has challenged web designers since the early days of the internet. Traditional approaches have often forced a choice between overwhelming detail and oversimplified summaries.

## The Problem with Traditional Hypertext

<span class="sidenote-number"></span>
<div class="sidenote" data-ref="sidenote-1">
  <p>The original vision of hypertext by <a href="#" data-popup="popup-nelson">Ted Nelson</a> was much richer than what we ended up with in HTML.</p>
</div>

Traditional hypertext, as implemented in the early web, took a fragmented approach. Information was split across many small pages, connected by links. This solved the problem of overwhelming readers with too much information at once, but created new problems:

1. Context switching as readers jump between pages
2. Loss of context when following links
3. Difficulty maintaining a mental model of the information space
4. The "too many tabs" problem

The classic hypertext paradigm of simply having a rat's-nest of links to hundreds of tiny pages to avoid any page being too big also breaks down, because how granular does one want to go? Should every section be a separate page? Every paragraph?

## Semantic Zoom: A Better Approach

<span class="sidenote-number"></span>
<div class="sidenote" data-ref="sidenote-2">
  <p>The term "semantic zoom" is borrowed from interface design, where it refers to showing different levels of detail at different zoom levels in a map or visualization.</p>
</div>

Semantic zoom offers a solution by progressively exposing more content beyond the default as the user requests it. This approach makes requesting additional information as easy as possible.

A web page using semantic zoom can be read at multiple structural levels:

1. Title and metadata
2. Abstract
3. Section headers (table of contents)
4. Emphasized keywords and margin notes
5. Main body text
6. Collapsed sections that can be expanded
7. Popup annotations for references
8. Full text of linked resources

This allows readers to start with a high-level overview and drill down only into the specific areas they're interested in, without losing context.

## Implementation Techniques

There are several ways to implement semantic zoom on the web:

### Collapsible Sections

<div class="collapse">
  <div class="collapse-header">Example Code</div>
  <div class="collapse-content">
```html
<div class="collapse">
  <div class="collapse-header">Section Title</div>
  <div class="collapse-content">
    Hidden content that can be expanded...
  </div>
</div>
```

This pattern can be implemented with a small amount of JavaScript to toggle the visibility of the content when the header is clicked.
  </div>
</div>

Collapsible sections allow you to hide detailed or tangential information that only some readers will want to see. This is particularly useful for:

- Technical details and code examples
- Extended discussions of edge cases
- Historical background or context
- Detailed proofs or derivations

### Sidenotes and Margin Notes

Sidenotes move footnotes from the bottom of the page into the margin, keeping them close to their reference point. On narrow screens, they can collapse into traditional footnotes.

### Popup Annotations

<span class="sidenote-number"></span>
<div class="sidenote" data-ref="sidenote-3">
  <p>Popup annotations can be implemented using various techniques, from simple CSS tooltips to more complex JavaScript libraries.</p>
</div>

Popup annotations provide additional context or explanations when hovering over links or terms. They can include:

- Definitions of technical terms
- Brief biographies of people mentioned
- Summaries of referenced works
- Previews of linked pages

For example, try hovering over <a href="#" data-popup="popup-stretchtext">StretchText</a> to see a popup explanation.

### Mathematical Expressions

Semantic zoom can also be applied to mathematical content. For instance, we might show a simplified version of an equation by default, with the option to expand it:

$$E = mc^2$$

This famous equation relates energy ($E$) to mass ($m$) and the speed of light ($c$).

## Benefits of Semantic Zoom

The semantic zoom approach offers several advantages:

1. **Reduced cognitive load**: Readers aren't overwhelmed with all information at once
2. **Maintained context**: Readers stay on the same page, preserving their context
3. **Progressive disclosure**: Information is revealed as needed
4. **Accommodates different readers**: Both casual and deep readers can use the same page
5. **Improved focus**: Readers can focus on exactly what interests them

## Challenges and Considerations

While semantic zoom offers many benefits, it also presents challenges:

1. **Implementation complexity**: More complex to build than traditional pages
2. **Discoverability**: Users need to understand how to interact with the page
3. **Accessibility**: Must ensure all features work with assistive technologies
4. **Performance**: Interactive elements can impact page performance
5. **Maintenance**: More complex pages can be harder to maintain

## Conclusion

Semantic zoom represents a powerful approach to presenting complex information on the web. By allowing readers to control the level of detail they see, we can create pages that serve both casual browsers and deep researchers.

As web technologies continue to evolve, we have increasingly powerful tools to implement semantic zoom effectively. The result is a richer, more nuanced reading experience that respects readers' time and attention while giving them access to all the information they need. 
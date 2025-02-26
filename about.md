---
layout: page
title: About
permalink: /about/
---

# About Me

<div class="about-intro">
  <div class="about-image">
    <img src="{{ '/assets/images/isaac-profile.jpg' | relative_url }}" alt="Isaac Audet" />
  </div>
  <div class="about-text">
    <p>Hello, I'm <strong>Isaac Audet</strong>. I'm an AI researcher, writer, and digital creator exploring the intersection of technology and humanity. This site serves as my digital garden—a place to share my work, thoughts, and explorations.</p>
    
    <div class="social-links">
      <a href="https://instagram.com/isaac_audet" target="_blank" class="social-link instagram" aria-label="Instagram">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
          <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
          <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
        </svg>
      </a>
      <a href="https://tiktok.com/@isaacaude" target="_blank" class="social-link tiktok" aria-label="TikTok">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M9 12a4 4 0 1 0 0 8 4 4 0 0 0 0-8z"></path>
          <path d="M15 8a4 4 0 1 0 0-8 4 4 0 0 0 0 8z"></path>
          <path d="M15 8v8a4 4 0 0 1-4 4"></path>
          <line x1="15" y1="4" x2="15" y2="12"></line>
        </svg>
      </a>
      <a href="https://github.com/isaacaudet" target="_blank" class="social-link github" aria-label="GitHub">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
        </svg>
      </a>
      <a href="mailto:contact@isaacaudet.com" class="social-link email" aria-label="Email">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
          <polyline points="22,6 12,13 2,6"></polyline>
        </svg>
      </a>
    </div>
  </div>
</div>

## My Journey

I've always been fascinated by the relationship between humans and technology. My journey began with a deep curiosity about how we interact with machines and how those interactions shape our experiences, thoughts, and society.

After studying computer science and cognitive psychology, I found myself drawn to the emerging field of artificial intelligence—not just as a technical discipline, but as a lens through which to explore fundamental questions about intelligence, creativity, and consciousness.

Today, I work at the intersection of AI research and human-centered design, focusing on creating systems that augment human capabilities rather than simply automating tasks. I believe that the most powerful technology is that which feels like a natural extension of human thought and creativity.

## What I Do

- **Research**: Exploring the frontiers of AI, with a focus on natural language processing, human-AI collaboration, and ethical AI development
- **Writing**: Sharing insights about technology, design, and the human experience through articles, essays, and occasional poetry
- **Speaking**: Presenting at conferences and events about the future of AI and human-computer interaction
- **Creating**: Building experimental projects that explore new ways of interacting with technology
- **Teaching**: Helping others understand complex technical concepts through clear, accessible explanations

## This Site

This site serves several purposes:

1. A **blog** where I share longer-form thoughts and research
2. A **portfolio** showcasing my work and projects
3. A **laboratory** for experimenting with new ideas
4. A **garden** where I cultivate thoughts and allow them to grow over time

Unlike traditional blogs that emphasize chronology, I treat this space as a living document—continually revisiting, refining, and connecting ideas as my understanding evolves.

## Get in Touch

I'm always interested in connecting with like-minded individuals, potential collaborators, or anyone with interesting questions or perspectives. Feel free to reach out via:

- **Email**: [contact@isaacaudet.com](mailto:contact@isaacaudet.com)
- **Instagram**: [@isaac_audet](https://instagram.com/isaac_audet)
- **TikTok**: [@isaacaude](https://tiktok.com/@isaacaude)
- **GitHub**: [isaacaudet](https://github.com/isaacaudet)

<style>
  .about-intro {
    display: flex;
    gap: var(--spacing-lg);
    margin: var(--spacing-md) 0 var(--spacing-lg);
    align-items: flex-start;
  }
  
  .about-image {
    flex: 0 0 200px;
  }
  
  .about-image img {
    border-radius: 50%;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  
  .about-image img:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
  }
  
  .about-text {
    flex: 1;
  }
  
  .about-text p {
    font-size: 1.1rem;
    line-height: 1.7;
  }
  
  .social-links {
    display: flex;
    gap: var(--spacing-sm);
    margin-top: var(--spacing-md);
  }
  
  .social-link {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: var(--color-accent-light);
    color: var(--color-accent);
    transition: all var(--transition-speed) ease;
    border-bottom: none;
  }
  
  .social-link:hover {
    background-color: var(--color-accent);
    color: white;
    transform: translateY(-3px);
    border-bottom: none;
  }
  
  @media (max-width: 768px) {
    .about-intro {
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    
    .about-image {
      margin-bottom: var(--spacing-md);
    }
    
    .social-links {
      justify-content: center;
    }
  }
</style>

---

This blog is built with [Jekyll](https://jekyllrb.com/) and hosted on [GitHub Pages](https://pages.github.com/). 
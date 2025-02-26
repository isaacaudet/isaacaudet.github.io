---
layout: page
title: Pictures
permalink: /pictures/
---

# Visual Explorations

A collection of photographs and visual experiments exploring the intersection of technology, nature, and human experience.

<div class="gallery">
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image1.jpg' | relative_url }}" alt="Abstract digital landscape" />
    <div class="gallery-caption">
      <h3>Digital Horizons</h3>
      <p>Exploring the boundary between natural and digital landscapes</p>
    </div>
  </div>
  
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image2.jpg' | relative_url }}" alt="Urban patterns" />
    <div class="gallery-caption">
      <h3>Urban Patterns</h3>
      <p>Finding algorithmic beauty in city structures</p>
    </div>
  </div>
  
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image3.jpg' | relative_url }}" alt="Human-AI collaboration" />
    <div class="gallery-caption">
      <h3>Collaborative Creation</h3>
      <p>Artwork created in partnership with generative AI</p>
    </div>
  </div>
  
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image4.jpg' | relative_url }}" alt="Natural patterns" />
    <div class="gallery-caption">
      <h3>Natural Algorithms</h3>
      <p>Mathematical patterns emerging in natural environments</p>
    </div>
  </div>
  
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image5.jpg' | relative_url }}" alt="Technology and nature" />
    <div class="gallery-caption">
      <h3>Technological Ecology</h3>
      <p>Examining the relationship between technology and natural systems</p>
    </div>
  </div>
  
  <div class="gallery-item">
    <img src="{{ '/assets/images/gallery/image6.jpg' | relative_url }}" alt="Abstract data visualization" />
    <div class="gallery-caption">
      <h3>Data Landscapes</h3>
      <p>Visualizing complex data structures as immersive environments</p>
    </div>
  </div>
</div>

<div class="instagram-section">
  <h2>More on Instagram</h2>
  <p>Follow me on <a href="https://instagram.com/isaac_audet" target="_blank">Instagram</a> for more visual explorations and behind-the-scenes content.</p>
  
  <div class="instagram-cta">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="instagram-icon">
      <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
      <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
      <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
    </svg>
    <a href="https://instagram.com/isaac_audet" target="_blank" class="instagram-link">@isaac_audet</a>
  </div>
</div>

<style>
  .gallery {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    grid-gap: var(--spacing-md);
    margin: var(--spacing-lg) 0;
  }
  
  .gallery-item {
    position: relative;
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  
  .gallery-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
  }
  
  .gallery-item img {
    width: 100%;
    height: 250px;
    object-fit: cover;
    display: block;
    margin: 0;
    transition: transform 0.5s ease;
  }
  
  .gallery-item:hover img {
    transform: scale(1.05);
  }
  
  .gallery-caption {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: linear-gradient(to top, rgba(0, 0, 0, 0.8), transparent);
    color: white;
    padding: var(--spacing-sm);
    transform: translateY(100%);
    transition: transform 0.3s ease;
  }
  
  .gallery-item:hover .gallery-caption {
    transform: translateY(0);
  }
  
  .gallery-caption h3 {
    margin: 0 0 5px 0;
    font-size: 1.2rem;
  }
  
  .gallery-caption p {
    margin: 0;
    font-size: 0.9rem;
    opacity: 0.9;
  }
  
  .instagram-section {
    margin-top: var(--spacing-lg);
    padding: var(--spacing-md);
    background-color: var(--color-accent-light);
    border-radius: 8px;
    text-align: center;
  }
  
  .instagram-cta {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: var(--spacing-sm);
  }
  
  .instagram-icon {
    margin-right: var(--spacing-xs);
    color: var(--color-accent);
  }
  
  .instagram-link {
    font-family: var(--font-sans);
    font-weight: 600;
    font-size: 1.2rem;
    color: var(--color-accent);
    transition: all var(--transition-speed) ease;
  }
  
  .instagram-link:hover {
    color: var(--color-text);
  }
  
  @media (max-width: 768px) {
    .gallery {
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    }
    
    .gallery-caption {
      transform: translateY(0);
      background: linear-gradient(to top, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2), transparent);
    }
  }
</style>

<script>
  // Create directory structure for gallery images if they don't exist
  // Note: This is just a placeholder. You'll need to add actual images to the gallery folder
</script> 
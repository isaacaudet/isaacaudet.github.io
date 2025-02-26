document.addEventListener('DOMContentLoaded', function() {
  // Initialize collapsible sections
  initCollapsibleSections();
  
  // Initialize sidenotes
  initSidenotes();
  
  // Initialize popups
  initPopups();
  
  // Initialize dark mode toggle
  initDarkModeToggle();
});

// Collapsible sections
function initCollapsibleSections() {
  const headers = document.querySelectorAll('.collapse-header');
  
  headers.forEach(header => {
    header.addEventListener('click', function() {
      this.classList.toggle('active');
      const content = this.nextElementSibling;
      if (content.classList.contains('collapse-content')) {
        content.classList.toggle('active');
      }
    });
  });
}

// Sidenotes
function initSidenotes() {
  const sidenoteNumbers = document.querySelectorAll('.sidenote-number');
  
  sidenoteNumbers.forEach((number, index) => {
    const id = `sidenote-${index + 1}`;
    number.setAttribute('id', id);
    number.setAttribute('aria-describedby', id);
    
    const sidenote = document.querySelector(`.sidenote[data-ref="${id}"]`);
    if (sidenote) {
      sidenote.setAttribute('id', `${id}-content`);
      sidenote.setAttribute('role', 'note');
      
      // On small screens, make sidenotes clickable to show/hide
      if (window.innerWidth <= 1200) {
        number.style.cursor = 'pointer';
        number.addEventListener('click', function(e) {
          e.preventDefault();
          const content = document.getElementById(`${id}-content`);
          content.style.display = content.style.display === 'none' ? 'block' : 'none';
        });
        
        // Initially hide sidenotes on small screens
        document.getElementById(`${id}-content`).style.display = 'none';
      }
    }
  });
}

// Popups
function initPopups() {
  const links = document.querySelectorAll('a[data-popup]');
  
  links.forEach(link => {
    const popupId = link.getAttribute('data-popup');
    const popup = document.getElementById(popupId);
    
    if (popup) {
      // Create popup container if it doesn't exist
      let popupContainer = document.getElementById('popup-container');
      if (!popupContainer) {
        popupContainer = document.createElement('div');
        popupContainer.id = 'popup-container';
        popupContainer.style.position = 'fixed';
        popupContainer.style.zIndex = '1000';
        popupContainer.style.display = 'none';
        popupContainer.style.maxWidth = '400px';
        popupContainer.style.padding = '1rem';
        popupContainer.style.backgroundColor = 'var(--color-bg)';
        popupContainer.style.border = '1px solid var(--color-border)';
        popupContainer.style.borderRadius = '3px';
        popupContainer.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.1)';
        document.body.appendChild(popupContainer);
      }
      
      // Show popup on hover
      link.addEventListener('mouseenter', function(e) {
        const rect = link.getBoundingClientRect();
        const clonedContent = popup.cloneNode(true);
        clonedContent.style.display = 'block';
        
        popupContainer.innerHTML = '';
        popupContainer.appendChild(clonedContent);
        
        // Position popup
        popupContainer.style.top = `${rect.bottom + window.scrollY + 10}px`;
        popupContainer.style.left = `${rect.left + window.scrollX}px`;
        popupContainer.style.display = 'block';
        
        // Adjust position if off-screen
        const popupRect = popupContainer.getBoundingClientRect();
        if (popupRect.right > window.innerWidth) {
          popupContainer.style.left = `${window.innerWidth - popupRect.width - 20}px`;
        }
      });
      
      // Hide popup when mouse leaves link or popup
      link.addEventListener('mouseleave', function(e) {
        // Small delay to allow moving mouse to popup
        setTimeout(() => {
          if (!popupContainer.matches(':hover')) {
            popupContainer.style.display = 'none';
          }
        }, 100);
      });
      
      popupContainer.addEventListener('mouseleave', function() {
        popupContainer.style.display = 'none';
      });
    }
  });
}

// Dark mode toggle
function initDarkModeToggle() {
  const toggleContainer = document.createElement('div');
  toggleContainer.className = 'dark-mode-toggle';
  toggleContainer.style.position = 'fixed';
  toggleContainer.style.bottom = '20px';
  toggleContainer.style.right = '20px';
  toggleContainer.style.zIndex = '999';
  toggleContainer.style.display = 'flex';
  toggleContainer.style.borderRadius = '5px';
  toggleContainer.style.overflow = 'hidden';
  toggleContainer.style.border = '1px solid var(--color-border)';
  
  const modes = [
    { id: 'auto', label: 'AUTO' },
    { id: 'light', label: 'LIGHT' },
    { id: 'dark', label: 'DARK' }
  ];
  
  // Get current mode from localStorage or default to 'auto'
  const currentMode = localStorage.getItem('colorMode') || 'auto';
  
  // Create buttons for each mode
  modes.forEach(mode => {
    const button = document.createElement('button');
    button.id = `mode-${mode.id}`;
    button.textContent = mode.label;
    button.style.border = 'none';
    button.style.background = mode.id === currentMode ? 'var(--color-accent)' : 'var(--color-bg)';
    button.style.color = mode.id === currentMode ? 'var(--color-bg)' : 'var(--color-text)';
    button.style.padding = '8px 12px';
    button.style.cursor = 'pointer';
    button.style.fontSize = '12px';
    button.style.fontFamily = 'var(--font-sans)';
    
    button.addEventListener('click', () => {
      setColorMode(mode.id);
      
      // Update button styles
      document.querySelectorAll('.dark-mode-toggle button').forEach(btn => {
        btn.style.background = 'var(--color-bg)';
        btn.style.color = 'var(--color-text)';
      });
      button.style.background = 'var(--color-accent)';
      button.style.color = 'var(--color-bg)';
    });
    
    toggleContainer.appendChild(button);
  });
  
  document.body.appendChild(toggleContainer);
  
  // Apply the current mode
  setColorMode(currentMode);
}

function setColorMode(mode) {
  localStorage.setItem('colorMode', mode);
  
  // Remove any existing mode classes
  document.documentElement.classList.remove('light-mode', 'dark-mode');
  
  if (mode === 'auto') {
    // Let the system preference decide
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      document.documentElement.classList.add('dark-mode');
    } else {
      document.documentElement.classList.add('light-mode');
    }
  } else {
    // Apply the selected mode
    document.documentElement.classList.add(`${mode}-mode`);
  }
}

// Helper function to create collapsible sections
function createCollapsible(title, content) {
  const container = document.createElement('div');
  container.className = 'collapse';
  
  const header = document.createElement('div');
  header.className = 'collapse-header';
  header.textContent = title;
  
  const contentDiv = document.createElement('div');
  contentDiv.className = 'collapse-content';
  contentDiv.innerHTML = content;
  
  container.appendChild(header);
  container.appendChild(contentDiv);
  
  return container;
}

// Helper function to create a sidenote
function createSidenote(content, index) {
  const id = `sidenote-${index}`;
  
  const number = document.createElement('span');
  number.className = 'sidenote-number';
  number.id = id;
  
  const note = document.createElement('div');
  note.className = 'sidenote';
  note.setAttribute('data-ref', id);
  note.innerHTML = content;
  
  return { number, note };
}

// Helper function to create a metadata block
function createMetadata(metadata) {
  const container = document.createElement('div');
  container.className = 'metadata';
  
  for (const [key, value] of Object.entries(metadata)) {
    const p = document.createElement('p');
    p.innerHTML = `<strong>${key}:</strong> ${value}`;
    container.appendChild(p);
  }
  
  return container;
} 
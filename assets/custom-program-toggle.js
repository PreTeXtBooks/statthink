// Custom JavaScript to add toggle functionality to R code blocks
// This adds a clickable button to show/hide R program elements

document.addEventListener('DOMContentLoaded', function() {
    // Find all program elements (R code blocks)
    const programElements = document.querySelectorAll('pre.program');
    
    programElements.forEach(function(preElement) {
        // Get the parent code-box div
        const codeBox = preElement.closest('.code-box');
        if (!codeBox) return;
        
        // Create a wrapper div for the toggle button and content
        const wrapper = document.createElement('div');
        wrapper.className = 'program-toggle-wrapper';
        
        // Create toggle button
        const toggleButton = document.createElement('button');
        toggleButton.className = 'program-toggle-button';
        toggleButton.textContent = '▶ Show R Code';
        toggleButton.setAttribute('aria-expanded', 'false');
        toggleButton.setAttribute('type', 'button');
        
        // Create content wrapper that will be toggled
        const contentWrapper = document.createElement('div');
        contentWrapper.className = 'program-toggle-content';
        contentWrapper.style.display = 'none';
        
        // Move the code-box into the content wrapper
        codeBox.parentNode.insertBefore(wrapper, codeBox);
        wrapper.appendChild(toggleButton);
        wrapper.appendChild(contentWrapper);
        contentWrapper.appendChild(codeBox);
        
        // Add click event to toggle
        toggleButton.addEventListener('click', function() {
            const isHidden = contentWrapper.style.display === 'none';
            
            if (isHidden) {
                contentWrapper.style.display = 'block';
                toggleButton.textContent = '▼ Hide R Code';
                toggleButton.setAttribute('aria-expanded', 'true');
                toggleButton.classList.add('expanded');
            } else {
                contentWrapper.style.display = 'none';
                toggleButton.textContent = '▶ Show R Code';
                toggleButton.setAttribute('aria-expanded', 'false');
                toggleButton.classList.remove('expanded');
            }
        });
    });
});

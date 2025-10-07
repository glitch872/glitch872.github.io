
  // Remove injected scripts and HTML in real-time
  (function() {
    // Define what to target: scripts and divs likely injected
    function cleanInjected(node) {
      if (!node) return;
      if (node.tagName === 'SCRIPT' && node.src.includes('zaraz')) {
        node.remove();
      }
      if (node.tagName === 'DIV' && node.innerHTML.includes('glitch872')) {
        node.remove();
      }
    }

    // MutationObserver watches for new nodes added to DOM
    const observer = new MutationObserver((mutations) => {
      for (const m of mutations) {
        for (const node of m.addedNodes) {
          cleanInjected(node);
          // Also check child nodes recursively
          if (node.querySelectorAll) {
            node.querySelectorAll('script, div').forEach(cleanInjected);
          }
        }
      }
    });

    observer.observe(document.documentElement, { childList: true, subtree: true });

    // Fallback: remove anything missed after load every 500ms for a few seconds
    let cleanupAttempts = 0;
    const interval = setInterval(() => {
      document.querySelectorAll('script[src*="zaraz"], div').forEach(cleanInjected);
      cleanupAttempts++;
      if (cleanupAttempts > 10) clearInterval(interval); // stop after 5 seconds
    }, 500);

    // Optional: clean immediately any already existing nodes
    document.querySelectorAll('script[src*="zaraz"], div').forEach(cleanInjected);
  })();

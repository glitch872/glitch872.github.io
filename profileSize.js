window.addEventListener('message', (event) => {
  if (event.data?.type === 'setHeight') {
    const iframe = document.getElementById('profileIframe');
    if (iframe && event.data.height) {
      iframe.style.height = event.data.height + 'px';
    }
    if (iframe && event.data.width) {
      iframe.style.width = event.data.width + 'px';
    }
  }
});

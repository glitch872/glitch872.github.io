window.addEventListener('message', (event) => {
  if (event.data?.type === 'setHeight') {
    const iframe = document.getElementByClass('profileIframe');
    if (iframe && event.data.height) {
      iframe.style.height = event.data.height + 'px';
    }
  }
});

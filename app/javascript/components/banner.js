import Typed from 'typed.js';

const typed = document.getElementById('typed');

const loadDynamicBannerText = () => {
  if (typed) {
    new Typed('#typed', {
      strings: ["Paintings | Drawings | Prints | Photography | Design"],
      typeSpeed: 120,
      loop: false
    });
  }
}

export { loadDynamicBannerText };

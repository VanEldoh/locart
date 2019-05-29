import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed', {
    strings: ["Paintings | Drawings | Prints | Photography | Design"],
    typeSpeed: 120,
    loop: false
  });
}

export { loadDynamicBannerText };

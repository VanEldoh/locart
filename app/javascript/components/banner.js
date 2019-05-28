import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed', {
    strings: ["Paintings", "Drawings", "Prints", "Photography", "Discover young artists", "Share your works"],
    typeSpeed: 120,
    loop: true
  });
}

export { loadDynamicBannerText };

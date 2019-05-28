import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed', {
    strings: ["Check out our latest highlights !"],
    typeSpeed: 120,
    loop: true
  });
}

export { loadDynamicBannerText };

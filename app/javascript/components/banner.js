import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed', {
    strings: ["First ^1000 sentence.", "Second sentence."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

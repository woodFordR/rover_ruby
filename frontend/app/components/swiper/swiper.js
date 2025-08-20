import Swiper from 'swiper/bundle';
import 'swiper/css';
import { Navigation, Pagination } from 'swiper/modules';

const swiper = new Swiper('.swiper', {
  on: {
    init: function() {
      console.log('swiper initialized');
    },
  },

  modules: [Navigation, Pagination],
  direction: 'vertical',
  loop: true,
  slidesPerView: 3,
  spaceBetween: 10,
  autoplay: {
    delay: 3000,
    disableOnInteraction: false,
  },

  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
  scrollbar: {
    el: '.swiper-scrollbar',
  },
});

// const swiper = document.querySelector('.swiper').swiper;

// Now you can use all slider methods like
// swiper.slideNext();


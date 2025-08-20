import Component from '@glimmer/component';
import { action } from '@ember/object';
import { tracked } from '@glimmer/tracking';
import Swiper from 'swiper/bundle';
import 'swiper/css/bundle';

export default class CarouselComponent extends Component {
  @tracked swiperInstance;
  @action
  setupSwiper(element) {
    this.swiperInstance = new Swiper(element.querySelector('.swiper'), {
      loop: true,
      slidesPerView: 1,
      spaceBetween: 10,
      autoplay: {
        delay: 3000,
        disableOnInteraction: false,
      },
      navigation: {
        nextEl: element.querySelector('.swiper-button-next'),
        prevEl: element.querySelector('.swiper-button-prev'),
      },
      pagination: {
        el: element.querySelector('.swiper-pagination'),
        clickable: true,
      },
      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 1,
        },
        1024: {
          slidesPerView: 1,
        },
      },
    });
  }
}


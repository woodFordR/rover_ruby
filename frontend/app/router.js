import EmberRouter from '@ember/routing/router';
import config from 'frontend/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.apiURL;
}

Router.map(function() {
  this.route('about');
  this.route('contact');
  this.route('portfolio');
});

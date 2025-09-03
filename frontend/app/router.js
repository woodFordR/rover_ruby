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
  this.route('users', function() {
    this.route('new', { path: 'newbie' });
    this.route('edit'), { path: '/:user_id' };
    this.route('show'), { path: '/:username' };
    this.route('user', { path: '/:user_id' }, function() {
      this.route('password', { path: '/password/edit' });
      this.route('projects');
      this.route('project', function() {
        this.route('new');
      });
      this.route('photos');
      this.route('photo', function() {
        this.route('new');
      });
    });
  });
  this.route('sessions', function() {
    this.route('new', { path: 'login' });
  });
});


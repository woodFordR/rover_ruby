import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class UserCreateRoute extends Route {
  @service store

  async model() {
    return this.store.find('user');
  }
}


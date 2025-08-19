import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class PortfolioRoute extends Route {
  @service store;

  async model() {
    return this.store.findAll('project');
  }
}

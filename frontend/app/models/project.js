import Model, { attr } from '@ember-data/model';

export default class Project extends Model {
  @attr('string') title;
  @attr('string') description;
  @attr('string') logo;
  @attr('string') owner;
}

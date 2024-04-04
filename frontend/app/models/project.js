import Model, { attr } from '@ember-data/model';

export default class ProjectModel extends Model {
  @attr title;
  @attr description;
  @attr logo;
  @attr owner;
}

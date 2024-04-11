import Model, { attr } from '@ember-data/model';

export default class Project extends Model {
  @attr('string') title;
  @attr('text') description;
  @attr('string') logo;
  @attr('string') owner;
  @attr('text') codeDescription;
  @attr('string') codeLink;
  @attr('string') avatarPath;
  @attr('string') deployLink;
}

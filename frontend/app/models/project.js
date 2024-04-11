import Model, { attr } from '@ember-data/model';

export default class Project extends Model {
  @attr('string') avatarPath;
  @attr('text')   codeDescription;
  @attr('string') codeLink;
  @attr('text')   codeSnippet;
  @attr('string') deployLink;
  @attr('text')   description;
  @attr('string') logo;
  @attr('string') owner;
  @attr('string') title;
}

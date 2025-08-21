import Model, { attr } from '@ember-data/model';

export default class Project extends Model {
  @attr('text') avatar;
  @attr('text') codeLink;
  @attr('text') codeSnippet;
  @attr('text') deployLink;
  @attr('string') codeDescription;
  @attr('string') description;
  @attr('string') logo;
  @attr('string') projectId;
  @attr('string') owner;
  @attr('string') title;
  @attr('string') codeLanguage;
}


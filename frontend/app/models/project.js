import Model, { attr } from '@ember-data/model';

export default class Project extends Model {
  @attr('string') avatarPath;
  @attr('string') codeDescription;
  @attr('string') codeLink;
  @attr('string') codeSnippet;
  @attr('string') deployLink;
  @attr('string') description;
  @attr('string') logo;
  @attr('string') projectId;
  @attr('string') type;
  @attr('string') owner;
  @attr('string') title;
  @attr('string') codeLanguage;
}


import Model, { attr } from '@ember-data/model';

export default class User extends Model {
  @attr('string') userId;
  @attr('string') firstName;
  @attr('string') lastName;
  @attr('string') username;
  @attr('string') email;
  @attr('integer') trackVisits;
}


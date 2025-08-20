import Model, { attr } from '@ember-data/model';

export default class User extends Model {
  @attr('string') firstName;
  @attr('string') lastName;
  @attr('string') username;
  @attr('integer') trackVisits;
  @attr('string') email;
  @atrr('string') userId;
}


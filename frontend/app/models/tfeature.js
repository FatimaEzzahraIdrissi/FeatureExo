import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  feature: DS.belongsTo('feature', { inverse: 'tfeatures' }),
});

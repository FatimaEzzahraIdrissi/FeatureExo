import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.get('store').findRecord('feature', params.feature_id);
  },

  actions: {
    save(model) {
      console.log(model.get('id'));
      let tfeature = this.get('store').createRecord('tfeature', {
        name: 'Test',
        feature: model});
      tfeature.save();
    }
  }
});

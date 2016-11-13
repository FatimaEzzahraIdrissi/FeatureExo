import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.get('store').findAll('feature');
  },
  actions: {
    save() {
      const newFeature = this.get('store').createRecord('feature', this.get('model'));
      newFeature.save().then((feature) => {
        this.transitionTo('features', feature);
    });
    }
  }
});

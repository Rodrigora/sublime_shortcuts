window.App = Ember.Application.create({
  LOG_TRANSACTIONS: true
});

App.ApplicationAdapter = DS.LSAdapter.extend({
  namespace: 'app-emberjs'
});

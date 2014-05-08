window.App = Ember.Application.create({
  LOG_TRANSACTIONS: true,
  rootElement: '#app-container'
});

App.ApplicationAdapter = DS.FixtureAdapter.extend();

//App.ApplicationAdapter = DS.LSAdapter.extend({
  // namespace: 'app-emberjs'
// });


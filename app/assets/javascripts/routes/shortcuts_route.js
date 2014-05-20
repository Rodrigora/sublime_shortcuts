SublimeShortcuts.ShortcutsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('shortcut');
  }
});
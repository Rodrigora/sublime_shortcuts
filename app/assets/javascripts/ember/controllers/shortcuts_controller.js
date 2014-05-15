App.ShortcutsController = Ember.ArrayController.extend({
  actions: {
    createShortcut: function() {

      var shortcut = this.store.createRecord('shortcut', {
        title: this.get('newShortcutTitle'),
        key: this.get('newShortcutKey')
      });

      this.set('newShortcutKey');
      this.set('newShortcutTitle');

      shortcut.save();
    }
  }
});
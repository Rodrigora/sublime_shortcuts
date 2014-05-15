App.ShortcutController = Ember.ObjectController.extend({
  actions: {
    destroy: function(){
      var shortcut = this.get('model');
      shortcut.deleteRecord();
      shortcut.save();
    },
    edit: function() {
      console.log('edit');
    }
  }
});
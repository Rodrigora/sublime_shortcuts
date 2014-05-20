SublimeShortcuts.ShortcutsController = Ember.ArrayController.extend({
  keyErrorBuff: false,
  titleErrorBuff: false,
  actions: {
    createShortcut: function() {

      if(!this.get('newShortcutTitle')){
        this.set('titleError', true)
      }else{
        this.set('titleError', false);
      }

      if(!this.get('newShortcutKey')){
        this.set('keyError', true);
      }else{
        this.set('keyError', false);
      }

      if(this.get('keyError') || this.get('titleError')){
        return;
      }

      var shortcut = this.store.createRecord('shortcut', {
        title: this.get('newShortcutTitle'),
        key: this.get('newShortcutKey')
      });

      this.set('newShortcutKey');
      this.set('newShortcutTitle');

      shortcut.save();
    }
  },
  hasError: Ember.computed('keyError', 'titleError', function() {
    return this.get('keyError') || this.get('titleError');
  }),

  keyError: function(arg, value){
    if(value != undefined){
      this.set('keyErrorBuff', value);
    }
    return this.get('keyErrorBuff');
  }.property(),

  titleError: function(arg, value){
    if(value != undefined){
      this.set('titleErrorBuff', value);
    }
    return this.get('titleErrorBuff');
  }.property()
});
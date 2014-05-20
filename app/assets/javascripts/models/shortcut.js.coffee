# for more details see: http://emberjs.com/guides/models/defining-models/

SublimeShortcuts.Shortcut = DS.Model.extend
  title: DS.attr 'string'
  key: DS.attr 'string'

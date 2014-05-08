App.Shortcut = DS.Model.extend({
  key: DS.attr('string'),
  title: DS.attr('string')
});


App.Shortcut.FIXTURES = [
 {
   id: 1,
   title: 'New file',
   key: '⌘ + Alt + N'
 },
 {
   id: 2,
   title: 'Move File',
   key: '⌘ + Shift + P / Type:Move'
 },
 {
   id: 3,
   title: 'Rebuild ctags',
   key: '(Ctrl + T) + R'
 }
];
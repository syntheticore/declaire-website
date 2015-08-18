if(typeof(window) == 'undefined') { require('newrelic') }

var declaire = require('declaire');
var hljs = require('highlight.js');
var _ = declaire.Utils;

var app = declaire.Application({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website',
  npmPublic: ['font-awesome', 'highlight.js']
});

app.ViewModel('HighlightView', {}, null, function() {
  var self = this;
  _.defer(function() {
    self.el.find("code").each(function() { 
      hljs.highlightBlock(this);
    });
  }, 500);
});

app.init(function(start) {
  start();
});

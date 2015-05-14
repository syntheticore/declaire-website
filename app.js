if(typeof(window) == 'undefined') { require('newrelic') }

var declaire = require('declaire');
var _ = declaire.Utils;
var hljs = require('highlight.js');

var app = declaire.Application({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website',
  npmPublic: ['font-awesome', 'highlight.js']
});

app.ViewModel('IndexView', {}, null, function() {
  if(_.onClient()) {
    this.el.find("code").each(function() { 
      hljs.highlightBlock(this);
    });
  }
});

app.init(function(start) {
  start();
});

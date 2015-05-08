if(typeof(window) == 'undefined') { require('newrelic') }

var declaire = require('declaire');
var hljs = require('highlight.js');

var app = declaire.Application({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website',
  npmPublic: ['font-awesome', 'highlight.js']
});

app.init(function(start, express, db) {
  start(function() {
    if(declaire.Utils.onClient()) {
      hljs.initHighlighting();
    }
  });
});

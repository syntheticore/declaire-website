if(typeof(window) == 'undefined') {
  require('newrelic');
}
var declaire = require('declaire');
var Express = require('express');
var hljs = require('highlight.js');


var app = declaire.Application({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website'
});

app.init(function(start, express, db) {
  if(declaire.Utils.onServer()) {
    express.use('/fontawesome', Express.static('./node_modules/font-awesome'));
    express.use('/highlightjs', Express.static('./node_modules/highlight.js'));
  }
  start(function() {
    if(declaire.Utils.onClient()) {
      hljs.initHighlightingOnLoad();
    }
  });
});

if(typeof(window) == 'undefined') { require('newrelic') }

var declaire = require('declaire');
var hljs = require('highlight.js');
var _ = declaire.utils;

var app = declaire.Application({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website',
  npmPublic: ['font-awesome', 'highlight.js']
});

app.ViewModel('HighlightView', {}, function() {
  this.on('attach', function() {
    var blocks = this.element.getElementsByTagName("code");
    for (var i = 0; i < blocks.length; ++i) {
      var block = blocks[i];
      hljs.highlightBlock(block);
    }
  });
});

app.init(function(start) { start() });

if(typeof(window) == 'undefined') {
  require('newrelic');
}

require('declaire')({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website'
}, function(declaire, start) {
  start();
});

if(typeof(window) == undefined) {
  require('newrelic');
}

var declaire = require('declaire');

declaire.start({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website'
});

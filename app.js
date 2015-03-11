var declaire = require('declaire');

if(typeof(window) != 'undefined') {
  // Migitate weird css columns behaviour in FF
  $('.features').css('max-width', 100);
  setTimeout(function() {
    $('.features').css('max-width', 900);
    setTimeout(function() {
      $('.features').css('max-width', 950);
    }, 100);
  }, 100);
}

declaire.start({
  mongoDevUrl: 'mongodb://127.0.0.1:27017/declaire-website'
});

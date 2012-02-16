var beep = require('./beep.js');
var boop = require('./boop.js');

var elem = document.getElementById('res');
elem.innerHTML = beep + ' ' + boop;

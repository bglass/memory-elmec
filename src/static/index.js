require('ace-css/css/ace.css');
require('font-awesome/css/font-awesome.css');
require('./index.html');

var Elm = require('../elm/Main');

var container = document.getElementById('container');
var app = Elm.Main.embed(container);

// load the things we need
var express = require('express');
var app = express();

// set the view engine to ejs
app.set('view engine', 'ejs');

app.use(express.static(__dirname+"/public"));
app.use(express.static(__dirname+"/partials"));

// use res.render to load up an ejs view file

// index
app.get('/', function(req, res) {
    res.render('pages/index');
});

// buttons
app.get('/buttons', function(req, res) {
    res.render('pages/buttons');
});

// typography
app.get('/typography', function(req, res) {
    res.render('pages/typography', {
        title: 'typography'
    });
});

// buttons
app.get('/pills', function(req, res) {
    res.render('pages/pills');
});

// cards
app.get('/cards', function(req, res) {
    res.render('pages/cards');
});

// tabs
app.get('/tabs', function(req, res) {
    res.render('pages/tabs');
});

// steps
app.get('/steps', function(req, res) {
    res.render('pages/steps');
});

app.listen(8080);
console.log('8080 is the port');
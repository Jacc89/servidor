var express = require('express');
var bodyParser = require('body-parser');
var server = require('http').Server(app);
var app = require('express')();
var  address = require('address');
// var app = express();
express = require('express');
cors = require('cors');
http = require('http');
path = require('path');


let util = require('./Utilities/Util');
let articleRoute = require('./Routes/article');
let transaccionRoute = require('./Routes/transaccion');


app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE, OPTIONS");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(cors());
app.use(function(_err, _req, res, _next) {
    return res.send({ "statusCode": util.statusCode.ONE, "statusMessage": util.statusMessage.SOMETHING_WENT_WRONG });
});

/* Routes */
app.use('/article', articleRoute,);
app.use('/transaccion', transaccionRoute);

app.use(function(_req, _res, next) {
    next();
});

/*first API to check if server is running*/
// app.get('*', (_req, res) => {
//     res.sendFile(path.join(__dirname, 'api/src/index.html'));
// })

// app.get('/', (req, res, next) => {
//     res.status(200).json({
//         code: 200,
//         data: []
//     });
// });

var server = app.listen(process.env.PORT || 3000, function() {
// var server = app.listen(process.env.PORT || 3200, function() {
    var port = server.address().port;
    console.log('Express server running in: \x1b[32m%s\x1b[0m', 'https://server3.azlogica.com:' + port + '/');
});

// server.listen(3000, function() {
//     console.log('app listening on port: 3000');
// });
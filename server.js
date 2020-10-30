'use strict';
var express = require('express');
var path = require('path');
var https = require('https');
var http = require('http');
const tuauth = require('./tuauth');

var PORT  = process.env.PORT || 8080;

var app = express();


var options = {
    'method': 'GET',
    'hostname': 'restapi.tu.ac.th',
    'path': '/api/v2/std/fac/all',
    'headers': {
      'Content-Type': 'application/json',
      'Application-Key': 'TUd385e507f10b7b04ec0c73d853e9ae18a332e504be6a734cafe5527017c2be83b1040a9c3f22ed82a441bfa5dee16f58'
    },
};

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

var body;
var req = https.request(options, function (res) {
    var chunks = [];

    res.on("data", function (chunk) {
        chunks.push(chunk);
    });

    res.on("end", function (chunk) {
        body = Buffer.concat(chunks).toString();
        console.log("GET INFO");
        // for(const input of body){
        //     if(input == 'facultyid')
        //         console.log(input);
        // }
    });

    res.on("error", function (error) {
        console.error(error);
    });
});




//สร้าง route ขึ้นมา 1 ตัว โดยกำหนดให้ path คือ / หรือ index ของ host นั่นเอง
app.get('/', function (req, res) {
    res.render('index', {});
});

app.get('/api-test', function (req, res) {
    res.send(body);
});

//ทำการรันเซิฟเวอร์ตามพอร์ตที่กำหนดด้านบน
app.listen(PORT, function () {
    console.log(`Listening on ${PORT}`)
});

app.get('/api', function (req, res) {
    const queryParams = req.query;
    console.log('param[1]:' + queryParams['user']);
    res.send(queryParams);
});


req.end();
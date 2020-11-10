'use strict';
var express = require('express');
var path = require('path');
var https = require('https');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false});

var PORT  = process.env.PORT || 8080;

var app = express();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.static(path.resolve(__dirname, 'public')));

//สร้าง route ขึ้นมา 1 ตัว โดยกำหนดให้ path คือ / หรือ index ของ host นั่นเอง
app.get('/', function (req, res) {
    res.redirect('/home');
});

app.get('/login', function (req, res) {
    res.render('index', {'status': true} );
});

app.get('/home', function (req, res) {
    res.render('home', {'status':false});
});

app.post('/login', urlencodedParser, function(req, res){
    var data = {
       'username': req.body.apiUser,
       'password': req.body.apiPass
    }

    async function secondFunc() {
        var userInfo = await tuApi(data);
        console.log(userInfo);
        
        if(userInfo.status == true){
            res.render('home', userInfo);
        }else{
            console.log('wrong data');
            res.render('index', {'status': false} );
        }
    }

    secondFunc();

});

//ทำการรันเซิฟเวอร์ตามพอร์ตที่กำหนดด้านบน
app.listen(PORT, function () {
    console.log(`Listening on ${PORT}`)
});

// define tu api request
async function tuApi(data){ 
    return new Promise(function( resolve, reject) {
        var options = {
            'method': 'POST',
            'hostname': 'restapi.tu.ac.th',
            'path': '/api/v1/auth/Ad/verify',
            'headers': {
            'Content-Type': 'application/json',
            'Application-Key': 'TUd385e507f10b7b04ec0c73d853e9ae18a332e504be6a734cafe5527017c2be83b1040a9c3f22ed82a441bfa5dee16f58'
            },
        };

        var userInfo;

        var request = https.request(options, function (res) {
            var chunks = [];
        
            res.on("data", function (chunk) {
                chunks.push(chunk);
            });
        
            res.on("end", function (chunk) {
                var body = Buffer.concat(chunks);
                userInfo = JSON.parse(body);
                resolve(userInfo);
            });
        
            res.on("error", function (error) {
                console.error(error);
            });
        });
        
        var postData =  `{\n\t\"UserName\":\"${data.username}\",\n\t\"PassWord\":\"${data.password}\"\n}`;
        request.write(postData);
        
        request.end();
        
    })
}
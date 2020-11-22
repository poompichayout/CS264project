'use strict';
var express = require('express');
var path = require('path');
var https = require('https');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false});

var PORT  = process.env.PORT || 8080;

var app = express();

var userInfo = new Object();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.static(path.resolve(__dirname, 'public')));

// สร้าง route ขึ้นมา 1 ตัว โดยกำหนดให้ path คือ / หรือ index ของ host นั่นเอง
app.get('/', function (req, res) {
    res.redirect('/home'); //ส่งไปรัน app.get /home
});

app.get('/login', function (req, res) { // หน้า login จ้า
    res.render('index', {'status': true} );
});

app.get('/home', function (req, res) { // หน้า home จ้า
    if(checkJsonEmpty(userInfo)) {
        res.render('home', {'status': false});
    } else if (userInfo.type == 'student') {
        res.render('home', userInfo);
    } else if (userInfo.type == 'employee') {
        res.render('home_emp', userInfo);
    }
});

app.get('/petition_confirm/:formName', function(req, res) { // หน้าตรวจสอบการอนุมัติจ้า
    if(checkJsonEmpty(userInfo)) {
        res.render(__dirname + '/views/' + req.params.formName, {'status': false});
    } else if (userInfo.type == 'student') {
        res.render(__dirname + '/views/' + req.params.formName, userInfo);
    } else if (userInfo.type == 'employee') {
        res.render('home_emp', userInfo);
    }
});

app.get('/petition/:formName', function(req, res) { // หน้าตรวจสอบการอนุมัติจ้า
    if(checkJsonEmpty(userInfo)) {
        res.render(__dirname + '/views/' + req.params.formName, {'status': false});
    } else if (userInfo.type == 'student') {
        res.render('home', userInfo);
    } else if (userInfo.type == 'employee') {
        res.render(__dirname + '/views/' + req.params.formName, userInfo);
    }
});

app.get('/logout', function (req,res) {
    userInfo = new Object();
    res.redirect('/home');
});

app.get('/home_emp', function (req,res) { // หน้า ui อาจารย์จ้า
    res.render('home_emp', {'status': false});
});

app.get('/u4_5/:student_id', function (req,res) { //นัดหมายนักศึกษา
    async function secondFunc() {
        console.log(req.params.student_id);
        let studentData = await getStudentData(req.params.student_id);

        if(studentData.status == true){
            console.log(studentData);
            res.render('u4_5', studentData);
        }else {

        }
    }
    secondFunc();
});

app.get('/data_student/:student_id', function (req,res) { //นัดหมายนักศึกษา
    async function secondFunc() {
        let studentData = await getStudentData(req.params.student_id);

        if(studentData.status == true){
            console.log(studentData);
            res.render('data_student', studentData);
        }else {

        }
    }
    secondFunc();
});

app.post('/login', urlencodedParser, function(req, res){
    var data = {
       'username': req.body.apiUser,
       'password': req.body.apiPass
    }

    async function secondFunc() {
        userInfo = await tuApi(data);
        console.log(userInfo);
        
        if(userInfo.status == true){
            res.render('home', userInfo);
        }else {
            console.log('wrong data');
            res.render('index', {'status': false} );
        }
    }

    secondFunc();

});


// ทำการรันเซิฟเวอร์ตามพอร์ตที่กำหนดด้านบน
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

async function getStudentData(data){ 
    return new Promise(function(resolve, reject) {
        var options = {
            'method': 'GET',
            'hostname': 'restapi.tu.ac.th',
            'path': `/api/v2/profile/std/info/?id=${data}`,
            'headers': {
              'Content-Type': 'application/json',
              'Application-Key': 'TUd385e507f10b7b04ec0c73d853e9ae18a332e504be6a734cafe5527017c2be83b1040a9c3f22ed82a441bfa5dee16f58'
            }
        };
          
        var req = https.request(options, function (res) {
            var chunks = [];
        
            res.on("data", function (chunk) {
                chunks.push(chunk);
            });
        
            res.on("end", function (chunk) {
                let body = Buffer.concat(chunks);
                let studentData = JSON.parse(body);
                resolve(studentData);
            });
        
            res.on("error", function (error) {
                console.error(error);
            });
        });
        
        req.end();
        
    })
}



function checkJsonEmpty(obj){
    return Object.keys(obj).length === 0 && obj.constructor === Object;
}
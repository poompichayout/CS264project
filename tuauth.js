var https = require('https');

var options = {
    'method': 'GET',
    'hostname': 'restapi.tu.ac.th',
    'path': '/api/v2/std/fac/all',
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
        var body = Buffer.concat(chunks).toString();
        //console.log(body.toString());
    });

    res.on("error", function (error) {
        console.error(error);
    });
});

module.exports = req;

req.end();
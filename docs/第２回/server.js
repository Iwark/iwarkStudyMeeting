var http = require('http');
http.createServer(function(request, response){
  response.writeHead(200, {'content-Type':'text/html'});
  response.end('Hello Node.js!');
}).listen(8080);
const http = require('http');
const os = require('os');

const listenPort = 8080;
console.log (" Local hostname is " + os.hostname() + ", listening on port " + listenPort );

var handler = function(request,response) {
	let clientIP = request.connection.remoteAddress;
	let ipaddr = request.ip
	console.log(" Request received for " + request.url + " from " + clientIP);
	response.writeHead(200);
	response.write("Container/HostName [ "  + os.hostname() + " ], IP [ " + clientIP + " ]" );
	response.end("\n");
	};

var server = http.createServer(handler);
server.listen(listenPort);

#!/bin/bash
######TEST2#####|
# on Nagios server 10.128.0.3
# https://raw.githubusercontent.com/Eli-Brown/NTI-320-Atom-Smasher/master/nrpe-http-eli/check_http
# https://github.com/Eli-Brown/NTI-320-Atom-Smasher/blob/master/nrpe-http-eli/check_http
# nrpe-http-eli/check_http

######TEST1#####
curl -v http://35.224.66.98/nagios

curl -s -o http_HTTP_Status_Response.txt -w "%{http_code}" http://35.224.66.98/nagios

http_HTTP-Status-Response=$(curl -s -o http_HTTP_Status_Response.txt -w "%{http_code}" http://35.224.66.98/nagios/
if [  $ http_HTTP_Status_Response != "200" ]; then
	echo "No HTTP Service error"
    # handle error
else
    echo "Server returned:"
    cat HTTP-Status-Response.txt    
    echo $ARG1
fi

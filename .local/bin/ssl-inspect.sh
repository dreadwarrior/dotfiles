#!/bin/bash

ssl_inspect() {
	local host=$1
	echo | openssl s_client -showcerts -servername $host -connect $host:443 2>/dev/null | openssl x509 -inform pem -noout -text
}

ssl_inspect "$@"


#!/bin/sh

if authelia validate-config --config $1 | grep -q 'Configuration parsed and loaded successfully without errors.'; then
	exit 0
else
	exit 1
fi

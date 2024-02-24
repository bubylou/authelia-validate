#!/bin/sh

curl -LO "https://github.com/authelia/authelia/releases/download/$INPUT_VERSION/authelia-$INPUT_VERSION-linux-amd64.tar.gz"
tar xf "authelia-$INPUT_VERSION-linux-amd64.tar.gz"

{
	echo "### Authelia Validate Output"
	echo "\`\`\`"
	./authelia-linux-amd64 validate-config --config $INPUT_FILE_PATH
	echo ""
	echo "\`\`\`"
} >> $GITHUB_STEP_SUMMARY

if cat $GITHUB_STEP_SUMMARY | grep -q 'Configuration parsed and loaded successfully without errors.'; then
	exit 0
else
	exit 1
fi

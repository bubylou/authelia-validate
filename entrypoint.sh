#!/bin/sh
{
	echo "### Authelia Validate Output"
	echo "\`\`\`"
	authelia validate-config --config $1
	echo ""
	echo "\`\`\`"
} >> $GITHUB_STEP_SUMMARY

if cat $GITHUB_STEP_SUMMARY | grep -q 'Configuration parsed and loaded successfully without errors.'; then
	exit 0
else
	exit 1
fi

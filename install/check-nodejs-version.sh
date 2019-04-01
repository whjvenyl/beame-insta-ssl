#!/bin/bash

set -eu

BIN="$1"

echo "+ Checking NodeJS version. Expecting 8.X.Y."
v="$($BIN -v)"
v="${v:1}"

if [[ $v =~ ^8\. ]];then
	echo "+ Node 8.X.Y detected - OK"
else
	echo "+ ERROR: Node version $v detected but beame-insta-server requires node version 8.X.Y"
	exit 10
fi


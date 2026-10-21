#!/usr/bin/env bash

# Copyright (c) CDQ AG

function trim() {
	local x=$(echo "$1" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
	echo $x
}

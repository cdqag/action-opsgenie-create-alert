#!/usr/bin/env bash

# Copyright (c) CDQ AG

function is_json() {
	echo "$1" | jq . >/dev/null 2>&1
}

# Escapes a text for use inside a JSON string (quotes, backslashes, line breaks, tabs).
function escape_json() {
	local x
	x=$(jq -n --arg x "$1" '$x')
	x="${x#\"}"
	x="${x%\"}"
	printf '%s\n' "$x"
}

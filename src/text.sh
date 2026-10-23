#!/usr/bin/env bash

# Copyright (c) CDQ AG

# Removes the whitespace at both ends; the text inside stays as it is.
function trim() {
	local x="$1"
	x="${x#"${x%%[![:space:]]*}"}"
	x="${x%"${x##*[![:space:]]}"}"
	printf '%s\n' "$x"
}

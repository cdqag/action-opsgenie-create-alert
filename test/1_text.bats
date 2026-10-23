load "test_helper/bats-support/load"
load "test_helper/bats-assert/load"
load "test_helper/common"

load "$DIR/src/text.sh"

setup() {
	common_setup
	cd "$DIR/src"
}

teardown() {
	common_teardown
}

@test "trim should remove spaces and line breaks at both ends" {
	run trim $'  \n foo bar \t\n'

	assert_success
	assert_output "foo bar"
}

@test "trim should keep line breaks inside the text" {
	run trim $'Line one\nLine two\n  - indented'

	assert_success
	assert_output $'Line one\nLine two\n  - indented'
}

@test "trim should keep a star as it is" {
	run trim "Build * failed"

	assert_success
	assert_output "Build * failed"
}

@test "trim should keep spaces inside the text" {
	run trim "two   spaces"

	assert_success
	assert_output "two   spaces"
}

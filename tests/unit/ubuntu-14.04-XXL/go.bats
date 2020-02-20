#!/usr/bin/env bats

load ../test_helper_go
load ../bats-support/load
load ../bats-assert/load

@test "go: 1.9.1 works" {
    run go_test_version 1.9.1

    assert_success
}

@test "go: go get works" {
    run go_test_get

    assert_success
}

@test "go: go build works" {
    run go_test_build
    assert_success
}

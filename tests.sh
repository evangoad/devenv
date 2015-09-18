#!/bin/bash
set -e
. assert.sh

assert ". devie -h" "$(cat text/usage.txt)"

assert_end examples

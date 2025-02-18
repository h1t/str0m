#!/bin/sh

if [ "$1" == "" ]; then
    cargo +nightly fuzz list
else
    cargo +nightly fuzz run $1 -- --stop-after-first-failure
fi

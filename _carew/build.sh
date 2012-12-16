#!/bin/bash

BASE=`dirname $0`

$BASE/vendor/bin/carew build --base-dir=_carew --web-dir=. -v

#!/bin/bash

var="hoge"
echo ${var}

readonly var
var="ika"
# readonly.sh: line 7: var: readonly variable

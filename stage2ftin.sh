#!/bin/bash -x
ft=0.083
in1=12
read inch
awk "BEGIN {x=1/12; y=$inch; z=x*y; print z}"


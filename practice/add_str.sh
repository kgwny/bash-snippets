#!/bin/bash

cat >> temp.txt << "EOF"
export PATH=$HOME/jdk1.8.0_31/bin:$PATH
export JAVA_HOME=$HOME/jdk1.8.0_31/
EOF

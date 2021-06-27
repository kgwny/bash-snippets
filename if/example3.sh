#!/bin/bash

VAR1=1
VAR2=2
VAR3=3
VAR4=2

# -gt means "greater than" ( > )
if [ $VAR2 -gt $VAR1 ]; then
  echo "VAR2 > VAR1"
fi

# -lt means "less than" ( < )
if [ $VAR2 -lt $VAR3 ]; then
  echo "VAR2 < VAR3"
fi

# -ge means "greater than or equal" ( >= )
if [ $VAR2 -ge $VAR4 ]; then
  echo "VAR2 >= VAR4"
fi

# -le means "less than or equal" ( <= )
if [ $VAR2 -le $VAR4 ]; then
  echo "VAR2 <= VAR4"
fi

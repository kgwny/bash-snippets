#!/bin/bash

HOGE="A"
FUGA="A"

if [ $HOGE = $FUGA ]; then
  echo "HOGE = FUGA"
else
  echo "HOGE ≠ FUGA"
fi

HOGE="A"
FUGA="B"

if [ $HOGE = $FUGA ]; then
  echo "HOGE = FUGA"
else
  echo "HOGE ≠ FUGA"
fi

#!/bin/bash

select i in Red Green Blue
do
  case $i in
    Red)   echo "Red!!"; break ;;
    Green) echo "Green!!"; break ;;
    Blue)  echo "Blue!!"; break ;;
    *)     echo "Bad select!!" ;;
  esac
done

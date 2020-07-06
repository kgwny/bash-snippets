#!/bin/bash

function usage() {
cat <<_EOT_
Usage:
  $0 [-a] [-b] [-f filename] arg1 ...

Description:
  hogehogehoge

Options:
  -a    aaaaaaaaaa
  -b    bbbbbbbbbb
  -f    ffffffffff

_EOT_
exit 1
}

if [ "$OPTIND" = 1 ]; then
  while getopts abf:h OPT
  do
    case $OPT in
      a)
        FLAG_A="on"
        echo "FLAG_A is $FLAG_A"            # for debug
        ;;
      b)
        FLAG_B="on"
        echo "FLAG_B is $FLAG_B"            # for debug
        ;;
      f)
        ARG_F=$OPTARG
        echo "ARG_F is $ARG_F"              # for debug
        ;;
      h)
        echo "h option. display help"       # for debug
        usage
        ;;
      \?)
        echo "Try to enter the h option." 1>&2
        ;;
    esac
  done
else
  echo "No installed getopts-command." 1>&2
  exit 1
fi

echo "before shift"                       # for debug
shift $((OPTIND - 1))
echo "display other arguments [$*]"       # for debug
echo "after shift"                        # for debug

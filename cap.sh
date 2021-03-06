#!/bin/sh
if [ $# -gt 0 ]; then
        set — "$@"
else
        set — `printenv PATH | tr -s : '\0' | xargs -0 printf "%s\n"`
fi

set — `printf "%s\n" "$@" | xargs readlink -f | sort | uniq`
find "$@" -type f -print0 | xargs -0 getcap

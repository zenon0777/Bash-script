#!/bin/bash
dir=$1
if [ "$2" = "-a" ]; then
    du -hax /$dir/* | sort -rh | head -10
else
    du -hsx /$dir/* | sort -rh | head -10
fi

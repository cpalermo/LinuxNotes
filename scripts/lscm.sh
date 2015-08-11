#!/bin/bash

# Es. ./lscm.sh lvm2

CMLIST=$( dpkg -L $1 | grep "bin/" | sort | sed 's/.*bin[/]//' )

CMWHATIS=$( "whatis" $CMLIST )

echo "# Command list of package \"$1\":"
echo ""
echo "$CMWHATIS" | sed 's/$/\n/ ; s/ /\n# / ; s/)[ ]*-/) -/g'

exit

#!/bin/bash

# Es. ./lscm.sh lvm2

CMLIST=$( dpkg -L $1 | grep "bin/" | sort | sed 's/.*bin[/]//' )

CMMAN=$( echo $CMLIST | sed 's/ /\n/g' | sed 's/^/man -P cat /' )

CMGREP=$( echo $CMLIST | sed 's/ / - |  /g ; s/^/  / ; s/$/ - /' )

echo "Command list of package \"$1\":"
echo ""
sh -c "$CMMAN" | egrep "$CMGREP" | sed 's/^[ ]*// ; s/ - /\n# / ; s/$/\n/'

exit

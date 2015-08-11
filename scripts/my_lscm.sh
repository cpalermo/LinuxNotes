#!/bin/bash

./lscm.sh coreutils > coreutils.txt
./lscm.sh util-linux > util-linux.txt
./lscm.sh e2fsprogs > e2fsprogs.txt
./lscm.sh mount > mount.txt
./lscm.sh procps > procps.txt
./lscm.sh passwd > passwd.txt
./lscm.sh lvm2 > lvm2.txt
./lscm.sh upstart > upstart.txt

exit

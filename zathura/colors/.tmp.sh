#  _  _ ___    
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              

#!/bin/sh
set -e

for NAMES in $(ls sola* gru*)
do
    echo >> $NAMES
done

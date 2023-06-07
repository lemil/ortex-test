#!/bin/bash

echo "------------------------------------------------"
echo " THIS WILL EXECUTE PSQL INSIDE THE CONTAINER "
echo "------------------------------------------------"
echo " Username (alredy set) : postgres"
echo " Password : example "
echo "------------------------------------------------"
echo "  "
echo "  Usage  bin/psql.sh <script>"
echo "  "
echo "     script       full path to the script inside"
echo "                  the container"
echo "  "
echo "------------------------------------------------"
echo "  "
echo "  "


SCRIPT=""
if [ "$#" -eq 1 ]
then
    SCRIPT="-f /tmp/scripts/"$1
fi

docker exec -it ortex_db psql -U postgres --password $SCRIPT
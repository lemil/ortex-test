#!/bin/bash


echo "------------------------------------------------"
echo " THIS WILL EXECUTE SHELL INSIDE THE CONTAINER "
echo "------------------------------------------------"
echo " Username : root"
echo "------------------------------------------------"
echo "  "
echo "  "


docker exec -it ortex_db  /bin/bash
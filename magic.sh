#!/bin/sh

file=".repo/local_manifests/harpia.xml"
# create local manifest
if [ -e "$file" ]; then
   rm "$file"
   curl --create-dirs -L -o .repo/local_manifests/harpia.xml -O -L $MANIFESTURL
   echo "Local manifest created"
else
   curl --create-dirs -L -o .repo/local_manifests/harpia.xml -O -L $MANIFESTURL
   echo "Local manifest created"
fi


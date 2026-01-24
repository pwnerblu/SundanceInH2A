#!/bin/bash

set -e

FILES=("artifacts/kernelcache.*.bin"
       "resources/IMGSGX535GLDriver-*")

tar -c --no-mac-metadata --no-fflags --no-xattrs --numeric-owner -vf sundance_rsrc.tar ${FILES[*]}
xz -f9 sundance_rsrc.tar

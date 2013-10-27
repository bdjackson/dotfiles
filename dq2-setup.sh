#!/bin/bash
source /afs/cern.ch/project/gd/LCG-share/current/external/etc/profile.d/grid-env.sh
sleep 1
voms-proxy-init -voms atlas
sleep 1
source /afs/cern.ch/atlas/offline/external/GRID/ddm/DQ2Clients/setup.sh


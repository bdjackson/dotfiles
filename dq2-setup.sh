#!/bin/bash

setupATLAS
sleep 1
localSetupDQ2Client
sleep 1
voms-proxy-init -voms atlas

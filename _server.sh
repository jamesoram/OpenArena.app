#!/bin/bash
set -e
cd $(dirname $0)
./quake3e.ded.aarch64 +set dedicated 1 +set fs_basegame baseoa +set fs_game oax +set protocol 71 +set fs_homepath $(pwd) +exec server.cfg

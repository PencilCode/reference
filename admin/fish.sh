#!/bin/sh

GIT="/usr/bin/git"
DIR="$( cd "$( dirname "$0" )/.." && pwd )"
cd $DIR
$GIT stash
$GIT checkout master
$GIT pull

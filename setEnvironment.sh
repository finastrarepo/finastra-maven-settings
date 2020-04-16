#!/bin/bash

#To abort if any command in script exit with error status
set -e

anypoint_environment=""
case "$TRAVIS_BRANCH" in
    "develop")
        anypoint_environment="Development"
    ;;
    "integrate")
        anypoint_environment="SIT"
    ;;
    "release")
        anypoint_environment="UAT"
    ;;
    "master")
        anypoint_environment="Production"
    ;;
esac

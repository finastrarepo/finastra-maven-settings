#!/bin/bash

#To abort if any command in script exit with error status
set -e

case "$TRAVIS_BRANCH" in
    "develop")
        export anypoint_environment="Development"
    ;;
    "integrate")
        export anypoint_environment="SIT"
    ;;
    "release")
        export anypoint_environment="UAT"
    ;;
    "master")
        export anypoint_environment="Production"
    ;;
esac

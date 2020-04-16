#!/bin/bash

#To abort if any command in script exit with error status
set -e

case "$TRAVIS_BRANCH" in
    "develop")
        export anypoint_environment="Development"
        export anypoint_application_environment="dev"
        export anypoint_application_name_appender="-dev"
    ;;
    "integrate")
        export anypoint_environment="SIT"
        export anypoint_application_environment="sit"
        export anypoint_application_name_appender="-sit"
    ;;
    "release")
        export anypoint_environment="UAT"
        export anypoint_application_environment="uat"
        export anypoint_application_name_appender="-uat"
    ;;
    "master")
        export anypoint_environment="Production"
        export anypoint_application_environment="prod"
        export anypoint_application_name_appender=""
    ;;
esac

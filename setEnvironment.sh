#!/bin/bash

#To abort if any command in script exit with error status
set -e

case "$TRAVIS_BRANCH" in
    "develop")
        export anypoint_environment="Development"
        export anypoint_application_environment="dev"
        export anypoint_application_name_appender="-dev"
        export anypoint_maven_additional_parameters="test"
    ;;
    "integrate")
        export anypoint_environment="SIT"
        export anypoint_application_environment="sit"
        export anypoint_application_name_appender="-sit"
        export anypoint_maven_additional_parameters="-DskipMunitTests"
    ;;
    "release")
        export anypoint_environment="UAT"
        export anypoint_application_environment="uat"
        export anypoint_application_name_appender="-uat"
        export anypoint_maven_additional_parameters="-DskipMunitTests"
    ;;
    "staging")
        export anypoint_environment="STAGING"
        export anypoint_application_environment="stg"
        export anypoint_application_name_appender="-stg"
        export anypoint_maven_additional_parameters="-DskipMunitTests"
    ;;
    "master")
        export anypoint_environment="Production"
        export anypoint_application_environment="prod"
        export anypoint_application_name_appender=""
        export anypoint_maven_additional_parameters="-DskipMunitTests"
    ;;
esac

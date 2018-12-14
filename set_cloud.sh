#!/usr/bin/env bash

if [ -z "$CLOUD_TO_USE" ]; then
    echo "CLOUD_TO_USE environment variable must be set to one of the following: aliyun, static"
    exit 1
fi

cloud_to_use=$(echo "$CLOUD_TO_USE" | tr '[:upper:]' '[:lower:]')
case $cloud_to_use in
    aliyun)
        cloud_to_use=aliyun
        message="Cloud to be used is Aliyun."
        ;;
    static)
        message="The static inventory will be used."
        ;;
    *)
        message="CLOUD_TO_USE environment variable was set to \"$CLOUD_TO_USE\" but must be set to one of the following: aliyun, static"
        echo -e $message
        exit 1
        ;;
esac

echo -e "${message}"

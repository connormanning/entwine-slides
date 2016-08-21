#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR

aws s3 cp . s3://entwine-slides/ \
    --recursive --acl public-read \
    --exclude "node_modules/*" \
    --exclude "misc/*" \
    --exclude ".git/**" \
    --exclude "upload.sh"


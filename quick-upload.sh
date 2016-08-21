#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR

aws s3 cp ./index.html s3://entwine-slides/index.html --acl public-read
aws s3 cp ./css/post.css s3://entwine-slides/css/post.css --acl public-read


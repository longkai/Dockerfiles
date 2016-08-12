#!/bin/bash

echo 'start building centos...'
./centos/build.sh

echo 'start building sakura...'
./sakura/build.sh

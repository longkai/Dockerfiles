#!/bin/bash

echo '+-----------------------+
| Start building CentOS |
+-----------------------+'

cd centos && ./build.sh && cd ..

# I'm proud to be a divider...

echo '+-----------------------+
| Start building Sakura |
+-----------------------+'

cd sakura && ./build.sh && cd ..

#!/bin/bash

path=${1:-`pwd`}

find $path -type f -exec sed -i.orig 's/\t/    /g' {} +


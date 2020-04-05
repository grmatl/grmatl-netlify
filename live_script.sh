#!/bin/bash 
if [ "$1" != "" ]; then
    echo "FB URL Provided. Executing script..."
    # sed -i 's/\(videos/\)\(.*\)/\1$1/' sample.txt
else
    echo "Please provide FB URL"
fi

# sed -nr '/videos// s/.*videos//${search}.*p'

# sed -i 's~http://www.test.org/name~http://www.test.org/archive/name~g' user.html

# sed -i 's/\(videos/\)\(.*\)/\1$1/' sample.txt
#!/bin/bash 
if [ "$1" != "" ]; then
	echo $1
    echo "FB URL Provided. Executing script..."
    fbid=$(echo $1 | sed 's~^.*videos/~~') # delete everything before videos/. output: /id/
    echo $fbid
	sed -i "s~videos.*/~videos/$fbid~" Live.html # replace videos/ with videos/id. output: fb video url
    git add . && git commit -m "Update to GRM site" && git push origin master
else
    echo "Please provide the URL of the live FB video like so: ./live_script.sh url"
fi
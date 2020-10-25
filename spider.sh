#/bin/bash 

wget --spider --force-html -r -l2 http://www.net/ 2>&1   | grep '^--' | awk '{ print $3 }'   | grep -v '\.\(css\|js\|torrent\)$'   > urls.m3u

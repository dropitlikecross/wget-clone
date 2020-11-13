#/bin/bash

wget2 --no-clobber --mirror --page-requisites --adjust-extension --no-parent --convert-links --reject '*.js,*.css,*.ico,*.iso' --ignore-tags=script --execute robots=off --user-agent=Mozilla --max-threads 5 --continue www.example.com

# wget-clone
Clone a Website using Wget


This is a reference script for cloning a website. This is not the fastest method but it is very reliable.



    $ wget \
         --recursive \
         --no-clobber \
         --page-requisites \
         --html-extension \
         --convert-links \
         --restrict-file-names=windows \
         --user-agent="Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0" \
         --no-parent \
            https://websitetoclonehere.com/



[link to script](https://github.com/dropitlikecross/wget-clone/blob/main/cloner.sh)

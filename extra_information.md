Copy an entire website
If you want to copy an entire website you will need to use the --mirror option. As this can be a complicated task there are other options you may need to use such as -p, -P, --convert-links, --reject and --user-agent.

 

-p	This option is necessary if you want all additional files necessary to view the page such as CSS files and images
-P	This option sets the download directory. Example: -P downloaded
--convert-links	This option will fix any links in the downloaded files. For example, it will change any links that refer to other files that were downloaded to local ones.
--reject	This option prevents certain file types from downloading. If for instance, you wanted all files except flash video files (flv) you would use --reject=flv
--user-agent	This option is for when a site has protection in place to prevent scraping. You would use this to set your user agent to make it look like you were a normal web browser and not wget.
Using all these options to download a website would look like this:

wget --mirror -p --convert-links -P ./local-dir --user-agent="Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0" http://www.domain.com/
TIP: Being Nice
It is always best to ask permission before downloading a site belonging to someone else and even if you have permission it is always good to play nice with their server. These two additional options will ensure you don’t harm their server while downloading.

--wait=15 --limit-rate=50K
This will wait 15 seconds between each page and limit the download speed to 50K/sec.

Downloading using FTP
If you want to download a file via FTP and a username and password is required, then you will need to use the --ftp-user and --ftp-password options.

An example of this might look like:

wget --ftp-user=USERNAME --ftp-password=PASSWORD ftp://ftp.domain.com/filename.tar.gz
Retry
If you are getting failures during a download, you can use the -t option to set the number of retries. Such a command may look like this:

wget -t 50 http://www.domain.com/filename.tar.gz
You could also set it to infinite retries using -t inf.

Recursive down to level X
If you want to get only the first level of a website, then you would use the -r option combined with the -l option.

For example, if you wanted only the first level of website you would use:

wget -r -l1 http://www.example.com/
Setting the username and password for authentication
If you need to authenticate an HTTP request you use the command:

wget --http-user=USERNAME --http-password=PASSWORD http://domain.com/filename.html

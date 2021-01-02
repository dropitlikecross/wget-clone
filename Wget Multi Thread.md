
**How to multi thread with [Wget](https://www.gnu.org/software/wget/) [2 Methods]**  

**Method 1**

    wget -r -np -N [url] &
    wget -r -np -N [url] &
    wget -r -np -N [url] &

**Method 2**

    for i in {1..3}; do wget -rnp -c -N [url]&; done;  

This starts 3 jobs or threads, you edit to increase as you wish. 
You can use a list of urls by replacing `[url]`with `-i url.txt`  
  
**Modifier explanation:**  
The `-N` modifier is what allows for this to work as it starts a file transfer only if the requested file is newer than what is on the disk. This **should** prevent the processes from overwriting each other and skip onto the next file. *Note: As this uses a time stamp to achieve this, there is some extra minimal overhead.*  
The `-c` modifier continues incomplete files and can be added or removed to your liking. I leave it on incase anything fails.  
`[url]` becomes example.com *removing the brackets*.  
  
#wgetmulti
#multithreadwget
#wgetmultithread
#fastwget

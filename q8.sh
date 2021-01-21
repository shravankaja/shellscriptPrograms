awk '{ print $1 } ' access.log | sort | uniq -c > ips-sorted.txt
head -4 ips-sorted.txt 


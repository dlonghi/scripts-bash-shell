IFS=$'\n'; for l in `cat arq.txt | egrep -v '^#|^$'`; do echo $l | awk '{print "UPDATE db.table SET X = "$1", Y=" $2 " WHERE Z=\x27" $3 "\x27;"}' ; done

IFS=$'\n'; for l in `cat arquivo.txt | egrep -v '^#|^$'`; do echo $l | awk '{print "UPDATE db.table SET a,b VALUES (\x27" $1 "\x27, \x27" $2 "\x27) WHERE c=\x27" $3 "\x27;"}' ; done

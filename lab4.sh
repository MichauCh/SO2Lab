#! /bin/bash
#a
ps aux | 
awk '{print "uzytkownik: "  $1, "uzywa CPU: " $3, " i MEM:\ "$4}'
#b
ps aux | awk '
    BEGIN {print "procesy uzywajace wiecej niz 0.1 CPU i MEM "}
    {if($3 > 0.1 || $4 > 0.1)
    {
        print  gensub(".*/", "", $11 )
    }}'
#c
ps  aux |
awk '{
    cpu+=$3; 
    mem+=$4}
    END {print "uzytkownicy uzywaja lacznie: " cpu " CPU oraz :", mem " MEM"}'

#d
ps aux |
awk '{
    if($1== mchojnac){
    cpu+=$3; 
    mem+=$4}}
    END {print "uzytkownik " $1 " uzywa: " cpu " CPU oraz: ", mem " MEM"}'

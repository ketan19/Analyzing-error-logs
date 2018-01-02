awk -F "|" '{ if($2== "ERROR") {print $3}}' /root/devops/*.log>filenameTemp.txt;
sort filenameTemp.txt|uniq -c > Temp2.txt && sort -k 2,2 Temp2.txt |sort -b --stable -n -k1,1nr >nonsorted.txt;
awk '{printf("%s\t%s\n", $2, $1)}' nonsorted.txt;
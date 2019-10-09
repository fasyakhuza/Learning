#combine many .txt files into only 1 txt file

list=`echo error*.txt`
cat $list > combine.txt

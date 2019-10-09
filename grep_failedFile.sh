#get filename  which has "failed" in its name
list=`echo *`
for i in $list;do
	echo $i
	grep failed $i #get 'failed' in filename in list
done

#!/bin/bash
# date: 2019/08/28
# filename: make_list.sh
# how to us: bash make_list.sh
# # # # # # # # # # # # # # # # 
# need to setup
# made by Kung-Hsiang and Fasya

maindir=root://grid71.phy.ncu.edu.tw//dpm/phy.ncu.edu.tw/home/cms//store/group/phys_exotica/bbMET/ExoPieElementTuples/MC_2017miniaodV2_V1
datasets=try.txt

# # # # # # # # # #
listnames=`cat $datasets`
# there are two counter listcount and acount, one is for the list/list_total, one is for folder_n/folder_total
listcount_0=`wc -l listname.txt`
listcount=1
for alist in $listnames;do
	mkdir $alist
	cd $alist
	tmp1=`gfal-ls $maindir/$alist`
	tmp2=`gfal-ls $maindir/$alist/$tmp1`
	for dt in $tmp2;do
		mkdir $dt
		cd $dt
		#tmp3=`gfal-ls $maindir/$alist/$tmp1/$dt`
		c=`gfal-ls $maindir/$alist/$tmp1/$dt` #find out the target directory
		acount_0=`echo $c |wc -w` 
		acount=0
		for i in $c;do
			(( acount += 1 ))
			percent=`echo 100*$acount/$acount_0 |bc`
			con=`gfal-ls $maindir/$alist/$tmp1/$dt/$i`
			for icon in $con;do
				echo $maindir/$alist/$tmp1/$dt/$i/$icon >> $i.txt
			done
			#echo "$i.txt is built"
		done
		echo -ne "total: ( $listcount / $listcount_0 ) , producing $percent %\r"
		cd ..
	done
	((listcount += 1))
	cd ..
done
echo ""
	


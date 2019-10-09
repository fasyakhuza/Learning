#for compare line by line whether same or not between 2 files
file1='pure_list/QCD_HT1500to2000_TuneCP5_13TeV-madgraph-pythia8.txt'
file2='filelists/QCD_HT1500to2000_TuneCP5_13TeV-madgraph-pythia8.txt'
for line1 in $file1;do
	for line2 in $file2;do
		if $line1 != $line2;then
			echo $line1 "!=" $line2
		fi
	done
done


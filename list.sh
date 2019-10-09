path='/eos/cms/store/group/phys_exotica/bbMET/ExoPieElementTuples_20190821/signal_sample/CRAB_PrivateMC/EXO-ggToXdXdHToBB_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600_CP3Tune_13TeV/190902_103302/0000'
files=`echo $path/*.root`
for i in $files;do
	echo $i >> EXO-ggToXdXdHToBB_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600_CP3Tune_13TeV.txt
done

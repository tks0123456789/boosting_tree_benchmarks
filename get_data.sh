#!/bin/bash -v
cd data
#if [ ! -f HIGGS.csv ]; then
#	wget -nc -nH https://s3.amazonaws.com/xgboosttestdata/HIGGS.csv.gz
#	gzip -d HIGGS.csv.gz HIGGS.csv
#	python higgs2libsvm.py
#fi
if [ ! -f set1.test.txt ]; then
	wget -nc -nH https://s3.amazonaws.com/xgboosttestdata/set1.test.txt
	wget -nc -nH https://s3.amazonaws.com/xgboosttestdata/set1.train.txt 
	python yahoo2libsvm.py
fi

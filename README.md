# XGBoost [cee4aaf](https://github.com/dmlc/xgboost/tree/cee4aafb93982a21e4fde10d202b3da1910934bf) CPU vs GPU

## Benchmarks

Time for 500 boosting iterations in seconds. 

|Dataset | Instances | Features | i7-4790K_1 | i7-4790K_2 | GTX 1070 | i7-4790K_1/GPU | i7-4790K_2/GPU|
|--- | --- | --- | --- | --- | --- |
|Yahoo LTR | 473,134 | 700 | 979 | 3824 | 629 | 1.56 | 6.08|
|Higgs | 10,500,000 | 28 | 16080 | 31798 | 3681 | 4.37 | 8.64|


i7-4790k_1:  Built without gpu plugin

i7-4790k_2:  Built with gpu plugin: [Build instruction](https://github.com/dmlc/xgboost/blob/master/plugin/updater_gpu/README.md#build)

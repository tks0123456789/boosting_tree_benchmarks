# XGBoost CPU vs GPU

## Benchmarks xgboost version [cee4aaf](https://github.com/dmlc/xgboost/tree/cee4aafb93982a21e4fde10d202b3da1910934bf)

Time for 500 boosting iterations in seconds. 

|Dataset | Instances | Features | CPU_1 | CPU_2 | GTX1070 | CPU_1/GTX1070 | CPU_2/GTX1070|
|--- | --- | --- | --- | --- | --- | --- | --- |
|Yahoo LTR | 473,134 | 700 | 979 | 3824 | 629 | 1.56 | 6.08|
|Higgs | 10,500,000 | 28 | 16080 | 31798 | 3681 | 4.37 | 8.64|


CPU: i7-4790K

CPU_1:  Built without gpu plugin

CPU_2:  Built with gpu plugin [Build instruction](https://github.com/dmlc/xgboost/blob/master/plugin/updater_gpu/README.md#build)

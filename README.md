# XGBoost CPU vs GPU

## Benchmarks

Time for 500 boosting iterations in seconds. XGBoost version is [cee4aaf](https://github.com/dmlc/xgboost/tree/cee4aafb93982a21e4fde10d202b3da1910934bf).

|Dataset | Instances | Features | CPU_1 | CPU_2 | GPU | CPU_1/GPU | CPU_2/GPU|
|--- | --- | --- | --- | --- | --- | --- | --- |
|Yahoo LTR | 473,134 | 700 | 979 [log](xgboost/xgboost_yahoo_speed_cpuonly.log)| 3824 [log](xgboost/xgboost_yahoo_speed.log)| 629 [log](xgboost/xgboost_yahoo_speed_gpu.log)| 1.56 | 6.08|
|Higgs | 10,500,000 | 28 | 16080 [log](xgboost/xgboost_higgs_speed_cpuonly.log)| 31798 [log](xgboost/xgboost_higgs_speed.log)| 3681 [log](xgboost/xgboost_higgs_speed_gpu.log)| 4.37 | 8.64|


CPU_1:  Built without gpu plugin

CPU_2:  Built with gpu plugin [Build instruction](https://github.com/dmlc/xgboost/blob/master/plugin/updater_gpu/README.md#build)

###Environment
|            |    v1    |
|------------|----------|
|CPU         |i7-4790K  |
|MEM         |     32G  |
|GPU         |GTX 1070  |
|Ubuntu      |14.04.5LTS|
|VGA driver  |367.57    |
|gcc         |4.8.4     |
|cmake       |3.7.1     |
|CUDA        |8.0       |
|CUB         |1.6.4     |

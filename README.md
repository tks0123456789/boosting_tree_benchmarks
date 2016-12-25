# XGBoost CPU vs GPU

## Benchmarks

Time for 500 boosting iterations in seconds. XGBoost version is [1957e6f](https://github.com/dmlc/xgboost/tree/1957e6fb4dd823f94251e7378abef03cba05f545).

|Dataset | Instances | Features | i7-4790K | GTX1070 | Speedup|
|--- | --- | --- | --- | --- | --- |
|Yahoo LTR | 473,134 | 700 | 956 [log](xgboost/xgboost_yahoo_speed.log)| 393 [log](xgboost/xgboost_yahoo_speed_gpu.log)| 2.43 |
|Higgs | 10,500,000 | 28 | 16061 [log](xgboost/xgboost_higgs_speed.log)| Error [log](xgboost/xgboost_higgs_speed_gpu.log)| ?|


CPU_1:  Built without gpu plugin

CPU_2:  Built with gpu plugin [Build instruction](https://github.com/dmlc/xgboost/blob/master/plugin/updater_gpu/README.md#build)

###Environment
|Date        |2016/12/23|
|------------|----------|
|CPU         |i7-4790K  |
|MEM         |     32G  |
|GPU         |GTX 1070  |
|Ubuntu      |14.04.5LTS|
|VGA driver  |375.26    |
|gcc         |4.8.4     |
|cmake       |3.7.1     |
|CUDA        |8.0       |
|CUB         |1.6.4     |

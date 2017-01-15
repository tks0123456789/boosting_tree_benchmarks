# XGBoost CPU vs GPU

## Benchmarks

Time for 500 boosting iterations in seconds. XGBoost version is [1957e6f](https://github.com/dmlc/xgboost/tree/1957e6fb4dd823f94251e7378abef03cba05f545).

|Dataset | Instances | Features | CPU | GPU | hist(gamma=1) | hist(gamma=0) |
|--- | --- | --- | --- | --- | --- | --- |
|Yahoo LTR | 473,134 | 700 | 1228 [log](xgboost/xgboost_yahoo_speed.log)| 516 [log](xgboost/xgboost_gpu_yahoo_speed.log)| 354 [log](xgboost/xgboost_hist_gamma_1_yahoo_speed.log)| 394 [log](xgboost/xgboost_hist_yahoo_speed.log)|
|Higgs | 10,500,000 | 28 | 10027 [log](xgboost/xgboost_higgs_speed.log)| Error [log](xgboost/xgboost_gpu_higgs_speed.log)| 593 [log](xgboost/xgboost_hist_gamma_1_higgs_speed.log)| 639 [log](xgboost/xgboost_hist_higgs_speed.log)|


###Environment
|Date        |2017/01/15|
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

xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed_cpuonly.log
xgboost/xgboost xgboost.conf tree_method=exact max_depth=6 data="../data/yahoo.train" objective="rank:ndcg" max_depth=6 2>&1 | tee xgboost_yahoo_speed_cpuonly.log



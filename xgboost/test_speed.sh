xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" objective="rank:ndcg" max_depth=6 2>&1 | tee xgboost_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed_gpu.log
xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/yahoo.train" objective="rank:ndcg" max_depth=6 2>&1 | tee xgboost_yahoo_speed_gpu.log

xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_gpu_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_gpu_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 gamma=1.0 max_depth=0 max_leaves=255 min_child_weight=100 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_hist_gamma_1_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 gamma=1.0 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_hist_gamma_1_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 max_depth=0 max_leaves=255 min_child_weight=100 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_hist_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_hist_yahoo_speed.log

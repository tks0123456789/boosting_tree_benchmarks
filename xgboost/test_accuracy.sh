xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_higgs_accuracy.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_yahoo_accuracy.log

xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_gpu_higgs_accuracy.log
xgboost/xgboost xgboost.conf tree_method=exact updater=grow_gpu data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_gpu_yahoo_accuracy.log

xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 gamma=1.0 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_hist_gamma_1_higgs_accuracy.log
xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 gamma=1.0 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_hist_gamma_1_yahoo_accuracy.log

xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_hist_higgs_accuracy.log
xgboost/xgboost xgboost.conf tree_method=hist grow_policy=lossguide eta=0.1 max_depth=0 max_leaves=255 min_child_weight=100  data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_hist_yahoo_accuracy.log


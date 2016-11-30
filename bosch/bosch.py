import numpy as np
import pandas as pd
import xgboost as xgb
import time

subsample = 0.35

train_rows = int(1183747 * subsample)
test_rows = 100000

def prepare_data():
    data = pd.read_csv("train_numeric.csv", index_col=0, dtype=np.float32, nrows=train_rows + test_rows)
    Y = data['Response'].values
    del data['Response']
    X = data.values

    Y_train = Y[0:train_rows]
    X_train = X[0:train_rows]
    Y_test = Y[train_rows:train_rows + test_rows]
    X_test = X[train_rows:train_rows + test_rows]
    train = xgb.DMatrix(X_train, label=Y_train)
    test = xgb.DMatrix(X_test, label=Y_test)
    train.save_binary("train.buffer")
    test.save_binary("test.buffer")

prepare_data()

param = {}
param['objective'] = 'binary:logistic'
param['eval_metric'] = 'auc'
param['max_depth'] = 6
param['eta'] = 0.1

train = xgb.DMatrix("train.buffer")
test = xgb.DMatrix("test.buffer")

watchlist = [ ( test, 'test')]

num_round = 500
tmp = time.time()
bst = xgb.train(param, train, num_round, watchlist, verbose_eval=10)
print ("Time: %s seconds" % (str(time.time() - tmp)))

param['updater'] = 'grow_gpu'
tmp = time.time()
bst = xgb.train(param, train, num_round, watchlist, verbose_eval=10)
print ("Time: %s seconds" % (str(time.time() - tmp)))

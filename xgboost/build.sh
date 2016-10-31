sudo rm -rf xgboost
git clone https://github.com/NVlabs/cub.git
git clone --recursive https://github.com/dmlc/xgboost
cd xgboost; mkdir build; cd build;
sudo cmake .. -DPLUGIN_UPDATER_GPU=ON -DCUB_DIRECTORY="../../cub"
sudo make

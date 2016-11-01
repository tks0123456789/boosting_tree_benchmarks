rm -rf xgboost
git clone https://github.com/NVlabs/cub.git
git clone --recursive https://github.com/RAMitchell/xgboost.git 
cd xgboost; mkdir build; cd build;
cmake .. -DPLUGIN_UPDATER_GPU=ON -DCUB_DIRECTORY="../../cub"
make
make

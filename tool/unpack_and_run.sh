#!/bin/sh

# 解某压缩包，并执行相关脚本
# 需要：
# 解压
# 执行
# 注意：
# 登录远程主机执行本机此脚本

FILE_NAME=centos-set-default-boot-mode
PACK_OUT_PATH=./
PACK_OUT_FILE=$FILE_NAME.tar
GZIP_IN_FILE=$PACK_OUT_PATH$PACK_OUT_FILE
GZIP_OUT_FILE=$GZIP_IN_FILE.gz
#列出其文件
#tar -tf $PACK_OUT_FILE
#删除某目录
rm -rf ./shell/$FILE_NAME
#解某个包
#way 01
#tar -xvf $PACK_OUT_FILE
#rm -rf dist docs help
#way 02
#mkdir -p ./shell/$FILE_NAME
#tar -xvf $PACK_OUT_FILE -C ./shell/$FILE_NAME
#解某压缩包
mkdir -p ./shell/$FILE_NAME
tar -zxvf $GZIP_OUT_FILE -C ./shell/$FILE_NAME
#查看某脚本
#cat ./shell/$FILE_NAME/dist/$FILE_NAME.sh | grep "#reboot"
#编辑某脚本
#sed -i "s/#reboot/reboot/g" ./shell/$FILE_NAME/dist/$FILE_NAME.sh
#赋执行权限
#fix:Permission denied
#ls -l ./shell/$FILE_NAME/dist/ | grep  $FILE_NAME.sh
chmod +x ./shell/$FILE_NAME/dist/$FILE_NAME.sh
#运行某脚本
#./shell/$FILE_NAME/dist/$FILE_NAME.sh --help
./shell/$FILE_NAME/dist/$FILE_NAME.sh --mode m
#删除某个包
#rm -rf $GZIP_IN_FILE
#删某压缩包
rm -rf $GZIP_OUT_FILE
#删除解压包
#rm -rf ./shell/$FILE_NAME
#退出该窗口
#exit 0

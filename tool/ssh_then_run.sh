#!/bin/sh

# 登录远程主机，并执行本机某脚本
# 需要：
# 登录
# 执行

PRIVITE_KEY_FILE_NAME=google-clound-ssr
PRIVITE_KEY_FILE_PATH=~/.ssh/
# 公钥文件名字
PUBLIC_KEY_FILE_NAME=${PRIVITE_KEY_FILE_NAME}.pub
# SSH服务所在主机地址
SSH_SERVER_IP=192.168.2.3
# SSH服务所在主机账号
#SSH_SERVER_USER=yemiancheng
SSH_SERVER_USER=root
SCRIPT_FILE=./tool/unpack_and_run.sh
# 登录+执行
ssh -i ${PRIVITE_KEY_FILE_PATH}${PRIVITE_KEY_FILE_NAME} $SSH_SERVER_USER@$SSH_SERVER_IP <$SCRIPT_FILE

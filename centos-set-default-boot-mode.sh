#!/bin/sh

# centos设置默认启动模式

BOOT_MODE=graphical #"multi-user|graphical"

::<<centos7-set-default-boot-mode1
# centos启用图形模式
# cat /etc/inittab
# systemctl set-default graphical.target
# reboot
# init 5
# systemctl get-default
# shutdown -r now
# /etc/systemd/system/default.target
centos7-set-default-boot-mode1

#删除配置
rm -rf /etc/systemd/system/default.target
#创建配置
#2命令模式
function boot_as_cli_mode(){
  ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target
}
#2图形模式
function boot_as_gui_mode(){
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
} 
case $BOOT_MODE in
    'multi-user')
     boot_as_cli_mode
    ;;
    'graphical')
     boot_as_gui_mode
    ;;
esac
#重启电脑
reboot

#### 参考文献
# vmware CentOS7图形界面与命令行界面切换
# https://blog.csdn.net/m0_37696990/article/details/81750849
# 在VMware上安装centOS7后不能进入图形界面
# https://blog.csdn.net/Jwast/article/details/79130299

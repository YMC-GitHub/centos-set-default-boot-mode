<desc>
  centos set default boot mode
<desc/>
<args>
  --mode optional,set the the boot mode
  --reboot optional,the switch to reboot machine
  -d,--debug  optional,set the debug mode
  -h,--help optional,get the cmd help
<args/>
<how-to-run>
  run as shell args
    bash ./centos-set-default-boot-mode.sh
  run as runable application
    ./centos-set-default-boot-mode.sh --mode=m
<how-to-run/>
<demo-with-args>
  without args:
    ok:./centos-set-default-boot-mode.sh
  passed arg with necessary value:
    ok:./centos-set-default-boot-mode.sh --mode=m
    ok:./centos-set-default-boot-mode.sh --mode m
  passed arg with optional value
  passed arg without value
<demo-with-args/>
<how-to-get-help>
  ok:./centos-set-default-boot-mode.sh --help
  ok:./centos-set-default-boot-mode.sh -h
  ok:./centos-set-default-boot-mode.sh --debug
debug-log:
  ok:./debug/centos-set-default-boot-mode.sh --mode=m
  ok:./debug/centos-set-default-boot-mode.sh --mode=g
<how-to-get-help/>

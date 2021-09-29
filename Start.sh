#!/bin/bash
#这里使用的前提是通过ssh设置免密登录
scp ./Deploy.sh root@116.63.138.138:/hx/cd_test_01.sh
ssh -tt root@116.63.138.138 << eeooff
sh /hx/cd_test_01.sh
exit
eeooff
echo done

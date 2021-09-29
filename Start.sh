#!/bin/bash
#这里使用的前提是通过ssh设置免密登录
ssh -tt root@116.63.138.138 << eeooff
sh Deploy.sh
exit
eeooff
echo done

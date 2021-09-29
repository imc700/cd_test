#!/bin/bash
# docker ps -a| grep cd_test_01 | awk '{print $1}' 这里会找到cd_test_01字符串在的那行 并会找到以空格分隔的第一段字符串 也就是容器的id
if test -z "$(docker ps -a| grep cd_test_01 | awk '{print $1}')"; then
	echo "The result is empty."
else
	# 停止容器
	docker stop `docker ps -a| grep cd_test_01 | awk '{print $1}' `
	# 删除容器
	docker rm   `docker ps -a| grep cd_test_01 | awk '{print $1}' `
	# 删除容器镜像
	docker rmi -f registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01
fi
#获取容器镜像
docker pull registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01
# 运行容器，这里给容器命名为cd_test_01
docker run -d -p 39100:8080 --name=cd_test_01  registry.cn-hangzhou.aliyuncs.com/rancher_k8s_ks02/k8s:cd_test_01

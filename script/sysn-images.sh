#!/bin/bash

while read line
do
  image=$(echo @line |awk -F"/" '{print $NF}')
  skopeo copy --all docker://docker.io/$image docker://registry.cn-hangzhou.aliyuncs.com/chtsen-sysnc/$image
done < ./docker-images.txt
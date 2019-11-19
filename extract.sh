#!/usr/bin/env bash

# workdir=$(cd "$(dirname $0)"; pwd)
# 通过 readlink 获取绝对路径，再取出目录
work_path=$(dirname $(readlink -f $0))
for i in "${work_path}"/* ;do
    [[ $i == *.tar.xz ]] && tar -Jxvf "$i"
done

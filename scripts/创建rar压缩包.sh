#!/bin/bash
#不对空格进行分隔处理
IFS=$'\t\n'
time=$(date "+%H%M%S")
rarpackage=新建rar压缩包$time.rar
result=$( rar a $rarpackage $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS 2>&1)
if [[ $result == *"Done"* ]];then
notify-send  -a rar压缩 -u normal "成功" "创建 $rarpackage 成功"
else
notify-send  -a rar压缩 -u normal "失败" "请检查文件名是否正常"
fi

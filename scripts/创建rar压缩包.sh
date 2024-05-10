#!/bin/bash
#不对空格进行分隔处理
IFS=$'\t\n'
filePath=""
index=0
for path in $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
do
   fileName=`basename $path`
   fileName=`echo "'$fileName'"`
   if [[ $index == 0 ]];then
   filePath="$filePath$fileName"
   else
   filePath="$filePath $fileName"
   fi
   ((index++))
done

rarpackage=新建rar压缩包.rar
cmd="result=\$(rar a $rarpackage $filePath 2>&1) \nif [[ \$result == *\"Done\"* ]];then\n    notify-send  -a rar压缩 -u normal \"成功\" \"创建$rarpackage成功\"\nelse\n    notify-send  -a rar压缩 -u normal \"失败\" \"请检查文件名是否正常\"\nfi"
echo -e $cmd > temp.sh
chmod +x temp.sh
`bash temp.sh`
rm temp.sh



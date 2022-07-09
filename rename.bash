#!/bin/bash 

# 将所有文件按顺序重命名为{0001-9999}.xxx格式，".xxx"为文件原有格式无需修改。
newName=
postfix=
count=0
# 支持一个位置参数，若不指定位置参数则以'.'(脚本运行的命令行目录)为操作目录
directory=.
if [[ "$1" ]]; then
    directory=$1
fi
# 处理异常
if [[ ! ( -d "$directory" ) ]]; then
    echo "$directory目录不存在！" >&2
    exit 1
fi
#去除目录名末尾可能存在的'/'
directory=${directory%/}
# for循环批处理文件名，更改字段分隔符为'\n'，防止文件名含有空格
IFS_old=$IFS
IFS=$'\n'
for name in "$directory"/* ; 
do
    # 提取后缀名（不含'.'）
    postfix="${name##*.}"
    newName=$(printf "%s/%05d.%s" "$directory" "$count" "$postfix")
    # 不对同一个文件、不存在的文件和目录重命名
    if [[ ! ( "$name" -ef "$newName" ) && ( -f "$name" ) ]]; then
        # 保证移动目的地的正确
        mv "$name" "$newName"
    fi
    # 递增计算器
    _=$(( ++count ))
    # 还原字段分隔符
    IFS="$IFS_old"
done
#!/bin/bash 

# 将所有文件按顺序重命名为{0001-9999}.xxx格式，".xxx"为文件原有格式无需修改。

echo -n "Please input a directory name->"
read -r
newName=
postfix=
count=0
# for循环批处理文件名，注意for i in $(ls ...)是一个致命错误，绝对不可以这么写！
for name in "$REPLY"/*; 
do
    # 若有目录存在，不对目录重命名
    if [[ -d "$name" ]]; then
        continue
    fi
    # 提取后缀名（不含'.'）
    postfix="${name##*.}"
    newName=$(printf "%05d.%s" "$count" "$postfix")
    mv "$name" "$newName"
    _=$(( ++count ))
done

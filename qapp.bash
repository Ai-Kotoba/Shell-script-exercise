#!/bin/bash -x

# quick操作 git add, git commit, git push 三合一

if [[  "$#" -eq 0  ]]; then
    echo "未指定位置参数!" >&2
    exit 1
fi
for file in "$@";
do
    git add "$file"
done
git commit -m "qapp.bash over!"
git push
#!/bin/bash

rmAndCp() {
	rm -rf "$1"
	cp -r "$2" "$3" 
}

rmAndCp "./.obsidian" "../.obsidian" "./"
rmAndCp "./.00 关于本资料库的使用方式" "../00 关于本资料库的使用方式" ".00 关于本资料库的使用方式"
rmAndCp "./.00-1 obsidian 模板" "../00-1 obsidian 模板" ".00-1 obsidian 模板"

# 检查是否有变更，如果有变更，则进行提交	
if git status | grep -q "modified"; then
	# 提示用户文件发生更改，是否提交
	read -p "文件发生更改，是否提交？(y/n): " answer
	if [ "$answer" = "y" ]; then
		git add ./
		git commit -m "sync local $(date +%Y-%m-%d)" #将日期附带上
		git push
	else
		echo "用户取消操作，不进行提交操作"
	fi
else
	echo "文件没有变任何变更，不进行提交操作"
fi

exit 0
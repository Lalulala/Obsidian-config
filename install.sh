#!/bin/bash

rmAndCp() {
	rm -rf "$1"
	cp -r "$2" "$3" 
}

rmAndCp "../.obsidian" ".obsidian" "../"
rmAndCp "../00 关于本资料库的使用方式" "./.00 关于本资料库的使用方式" "../00 关于本资料库的使用方式" 
rmAndCp "../00-1 obsidian 模板" "./.00-1 obsidian 模板" "../00-1 obsidian 模板" 

exit 0

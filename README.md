# Obsidian 公共配置库

这是一个用于管理和同步 Obsidian 配置的仓库。

## 功能说明

本仓库包含以下配置文件和目录：
- `.obsidian` - Obsidian 核心配置
- `00 关于本资料库的使用方式` - 使用说明文档
- `00-1 obsidian 模板` - 常用模板

## 使用方法

### 初始安装
运行 `install.sh` 脚本将配置部署到你的 Obsidian 仓库：

```bash
bash ./install.sh
```
此脚本会：
1. 删除上层目录中的现有配置
2. 将本仓库的配置文件复制到上层目录

### 同步本地更改
如果你对配置进行了修改，可以运行 `syncLocal.sh` 脚本来更新本仓库：

```bash
bash ./syncLocal.sh
```
此脚本会：
1. 删除本仓库中的旧配置
2. 从上层目录同步最新的配置到本仓库

## 注意事项
- 请在运行脚本前确保已备份重要数据
- 脚本会覆盖目标目录中的同名文件和文件夹

## 示例：

假设你有一个 Obsidian 仓库，结构如下：

```
/obsidian-repo
├── .obsidian
``` 

将本仓库以git子模块添加到obsidian-repo仓库中

```bash
cd obsidian-repo
git submodule add git@gitee.com:lwh2398819901/obsidian-pub-config.git ./
git submodule update --init --recursive
```

进入子模块目录
```bash
cd obsidian-pub-config
```

运行 `install.sh` 脚本：

```bash
bash ./install.sh
```

执行后，仓库结构将变为：

```
/obsidian-repo
├── .obsidian
├── 00 关于本资料库的使用方式
├── 00-1 obsidian 模板
```

插件及配置同步完毕。

当仓库结构发生变化时，运行 `syncLocal.sh` 脚本：

```bash
bash ./syncLocal.sh
```

执行后，仓库配置将被同步到本仓库。
执行git 命令提交

```bash
git add .
git commit -m "syncLocal"
git push
```



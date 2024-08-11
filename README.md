### 一键搭建操作系统环境

安装 brew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

在临时文件夹中安装 yadm；将 dotfile 克隆到本地；初始化安装系统；安装系统所有包；完成一键搭建系统环境。
```shell
curl -sL https://raw.githubusercontent.com/Elepv/dotfiles/master/pre_bootstrap.sh | bash
```

### yadm 常用命令


安装：
```shell
brew install yadm
```

初始化：
```shell
yadm init
yadm add <important file>
yadm commit -m "addd file"
```

连接远程仓库和推送文件到仓库：
```shell
yadm remote add origin git@github.com:Elepv/dotfiles.git
yadm push -u origin master
# yadm push -u origin <local branch>:<remote branch>
```

将远程仓库克隆到本地：
```shell
yadm clone git@github.com:Elepv/dotfiles.git

# 查看现在本地文件和仓库中文件的差异
yadm status

# 插件目前仓库连接的远程仓库地址
yadm remote -v
```

对比和将仓库中的文件应用到本地：
```shell
yadm status
yadm list

# 在有远程仓库连接时，获取远程仓库内容
yadm fetch

# 查看文件具体的差异
yadm diff filename

# 把本地文件加入到仓库，并提交
yadm add /path/to/filename
yadm commit --amend # 替代上次提交，并使用上次提交附带的信息

# 将仓库中的文件应用到本地
yadm checkout -- /path/to/filename

```

如果远程仓库中的配置文件与本地冲突，则需要先解决冲突，重新提交后，再 pull 到本地。

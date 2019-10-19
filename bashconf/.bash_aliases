# 创建目录并且换到目录
md () { mkdir -p "$@" && cd "$1";    }   

# 单个列中显示每个项目的大小，然后按大小对其进行排序，并使用符号表示文件类型。
alias lt='ls --human-readable --size -1 -S --classify' 

# 功能同上，用在MacOS 或 BSD 上
#alias lt='du -sh * | sort -h'  

# 查找历史命令中指定关键字
alias gh='history|grep' 

# 统计目录中有多少文件。这个别名会计算文件，忽略目录，但不会忽略目录的内容。
alias count='find . -type f | wc -l' 

# 带进度条的复制命令，可以复制文件，目录
alias cpv='rsync -ah --info=progress2' 


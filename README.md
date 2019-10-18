# 效果图

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/overview.png)

# 安装

```shell
apt-get update
```

```shell
apt-get install -y universal-ctags clang libclang-dev build-essential python python-dev python3-dev fontconfig curl libfile-next-perl ack-grep git cmake
```

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```shell
vim -c "PlugInstall" -c "q" -c "q"
```



# 快捷键

| 快捷键              | 说明                                 |
| ------------------- | ------------------------------------ |
| `,`                 | Leader Key                           |
| `<leader>n`         | 打开/关闭代码资源管理器              |
| `<leader>t`         | 打开/关闭函数列表                    |
| `<leader>u`         | 转到函数/变量声明                    |
| `<leader>U`         | 转到函数实现                         |
| `<leader>o`         | 打开include文件                      |
| `<leader>w`         | 单词跳转                             |
| `<leader>f`         | 搜索~目录下的文件                    |
| `<leader>F`         | 搜索当前目录下的文本                 |
| `<leader>g`         | 显示git仓库提交记录                  |
| `<leader>G`         | 显示当前文件提交记录                 |
| `<leader>gg`        | 显示当前文件在某个commit下的完整内容 |
| `<leader>ff`        | 语法错误自动修复(FixIt)              |
| `<c-p>`             | 切换到上一个buffer                   |
| `<c-n>`             | 切换到下一个buffer                   |
| `<leader>d`         | 删除当前buffer                       |
| `<leader>D`         | 删除当前buffer外的所有buffer         |
| `vim`               | 运行vim编辑器时,默认启动开始页面     |
| `<F5>`              | 显示语法错误提示窗口                 |
| `<F11>`             | 显示随机主题                         |
| `<F12>`             | 显示主题名字                         |
| `fa`                | 查找字母a，然后再按f键查找下一个     |
| `<leader>e`         | 快速编辑vimrc文件                    |
| `<leader>s`         | 重新加载vimrc文件                    |
| `<leader>x`         | 保存当前编辑文件                     |
| `<leader>q`         | 快速退出vim                          |
| `<leader>h`         | 打开sharpvim帮助文档                 |
| `<leader>H`         | 打开当前光标所在单词的vim帮助文档    |
| `<leader><leader>i` | 安装插件                             |
| `<leader><leader>u` | 更新插件                             |
| `<leader><leader>c` | 删除插件                             |

# 插件介绍&使用

## **[gv.vim](https://github.com/junegunn/gv.vim)**

简介：git commit 浏览器

很显然，自能再包含.git的项目中使用

`<leader>g` 查看git commit提交记录

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/gv_vim_lg.png)

`<leader>G` 查看只与当前文件相关的git commit提交记录

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/gv_vim_G.png)

`<leader>gg`直接看图吧,不好描述

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/gv_vim_lgg.png)

## vim-gutentags

 过去写几行代码又需要运行一下 ctags 来生成索引，每次生成耗费不少时间。  [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) 就是一款自动管理tags文件的插件。 gutentags会搜索工程目录的标志（` '.root', '.svn', '.git', '.hg', '.project' `），碰到这些文件/目录名就停止向上一级目录递归。

`CTRL-]` 直接在当前窗口里跳转到定义，

`CTRL-W ]` 用新窗口打开并查看光标下符号的定义

`CTRL-W }` 使用 preview 窗口预览光标下符号的定义。  

### 什么时候使用到tags文件？

后面会介绍道YouCompleteMe，也提供了查看定义等功能，使用上感觉和tags文件差不多。这里先说常见，后面再说区别。如果你看开源C/C++项目源码（eg: Linux kernel），这个时会就要适应tags文件，使用本节的快捷键。YCM更多的时候用于用户态代码补全。

## clever-f.vim

vim本身支持f{char}查找单个字符，; ,负责匹配字符间前后移动，但是按键不好记。clever-f.vim插件提供了更好的单字符查找体验，使用上依然是`f{char}`，`f`下一个，`F`上一个

## vim-smooth-scroll

让你的vim大段代码移动如丝般顺化，下面4个快捷键都差不多，按个人喜好记忆即可。

`Ctrl+u` move up

`Ctrl+d` move down

`Ctrl+b` move back

`Ctrl+p` move previous

## echodoc

C/C++编程时函数自动提示。注意，这个插件需要.ycm_extra_conf.py文件辅助函数提示。

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/echodoc.png)

## vim-slash

vim本身的/ ？搜索有个缺点，默认情况下搜索时不高亮。开启高亮set hls后，搜索时倒是高亮了，但是当你不用搜索浏览代码时，原来高亮的地方并没有取消高亮，是非影响观感。本插件优化了搜索，使用方式上不变，仍是`/`和`？`移动光标后清除高亮 

## nerdtree

`<leader>n`开关 代码资源管理器 

## nerdtree-git-plugin

在nerdtree上显式git状态标志

"Modified"  : "✹",

"Staged"    : "✚",

"Untracked" : "✭",

"Renamed"   : "➜",

"Unmerged"  : "═",

"Deleted"   : "✖",

"Dirty"     : "✗",

"Clean"     : "✔︎",

"Ignored" : '☒',

"Unknown"   : "?"

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/nerdtree-git-plugin.png)

## vim-devicons

为NERDTree, vim-airline提供丰富的图标。

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/vim-devicons.png)

## vim-nerdtree-syntax-highlight

增强vim-devicons插件的显示效果

## vim-airline

提供底部状态栏信息

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/vim-airline.png)

## vim-repeat

vim编辑中使用`.`重复上一个操作

## vim-commentary

`gcc`单行注释

`vgc`选中注释

`gcgc`取消注释

## vim-surround

It's easiest to explain with examples. Press `cs"'` inside

```
"Hello world!"
```

to change it to

```
'Hello world!'
```

Now press `cs'` to change it to

```
<q>Hello world!</q>
```

To go full circle, press `cst"` to get

```
"Hello world!"
```

To remove the delimiters entirely, press `ds"`.

```
Hello world!
```

Now with the cursor on "Hello", press `ysiw]` (`iw` is a text object).

```
[Hello] world!
```

Let's make that braces and add some space (use `}` instead of `{` for no space): `cs]{`

```
{ Hello } world!
```

Now wrap the entire line in parentheses with `yssb` or `yss)`.

```
({ Hello } world!)
```

Revert to the original text: `ds{ds)`

```
Hello world!
```

Emphasize hello: `ysiw`

```
<em>Hello</em> world!
```

Finally, let's try out visual mode. Press a capital V (for linewise visual mode) followed by `S`.

```
<p class="important">
  <em>Hello</em> world!
</p>
```

## vim-fugitive

[vim-fugitive](https://github.com/tpope/vim-fugitive)

## tabular

 Vim 插件 [Tabular](https://github.com/godlygeek/tabular) 允许你在 Vim 中按等号、冒号、表格等来对齐文本 

如下代码按；对齐

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/tabular.png)

使用`:Tab /{char}`

## auto-pairs

[auto-pairs](https://github.com/jiangmiao/auto-pairs)自动补全常见成对的符号

## ack.vim

`<leader>F` 激活[ack.vim](https://github.com/mileszs/ack.vim)模糊查询

激活ack后，会显示`:Ack`,后面输入关键字即可在当前目录及其字目录下搜索，搜索结果会以quickfix显式

操作quickfix的快捷键

`q`退出quickfix

`h`水平打开一个窗口显式

`H`水平打开一个窗口显式，焦点保持在quickfix窗口

`v`垂直打开一个窗口显式

`gv`垂直打开一个窗口显式，焦点保持在quickfix窗口

`t`以vim-tab页的方式打开一个窗口

`T`以vim-tab页的方式打开一个窗口，焦点保持在quickfix窗口

`go`打开预览文件，焦点保持在quickfix窗口

`Enter`打开预览文件

## LeaderF

<leader>f触发leaderf，默认在当前目录及其字目录下模糊查询

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/LeaderF.png)

## YouCompleteMe

 YouCompleteMe可是说是Linux下史上最强大的基于语义的自动补全插件，支持C/C++、C#、Python、PHP等语言 。这里只介绍C/C++语言的使用方式，

`apt install clang`

`./install.py --clang-completer`显式指明支持C/C++语言安装

YCM提供自动补全功能依赖于文件ycm_extra_conf.py

### YCM全局配置文件

YCM全局配置文件的路径在`.vimrc`文件中定义，比如我的配置是
`let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'`
用的默认命名`ycm_extra_conf.py`，直接扔到了用户主目录下，修改文件名和路径都是可以的。该配置文件的核心就是修改`flags`变量。 

```python
flags = [
'-Wall',
'-Wextra',
'-Werror',
'-Wno-long-long',
'-Wno-variadic-macros',
'-fexceptions',
'-DNDEBUG',
'-std=c++11',
'-x',
'c++',
'-I',
'/usr/include',
'-isystem',
'/usr/lib/gcc/x86_64-linux-gnu/5/include',
'-isystem',
'/usr/include/x86_64-linux-gnu',
'-isystem'
'/usr/include/c++/5',
'-isystem',
'/usr/include/c++/5/bits'
]
```

 可以看到`flags`是一个列表，参数是和gcc的参数一致。 -isystem就相当于我们gcc编译代码时指定的`-I`选项

 搜索头文件的顺序是：`-I`指定目录、`-isystem`指定目录、标准系统目录。 

以后YCM无法打开头文件，或者不能自动提示，只需要在`ycm_extra_conf.py`添加响应文件路径即可。

### 拷贝YCM配置文件到项目目录

之前修改的是全局YCM配置文件，如果有多个项目，每次都修改全局配置文件的话，`flags`列表就会越来越长，头文件搜索目录越来越多，会影响YCM的效率，因此可以拷贝一份到项目目录下，然后再进行修改。 

```php
~/sample$ cp ~/.ycm_extra_conf.py .
~/sample$ ls -a
.  ..  include  src  .ycm_extra_conf.py
```

 YCM配置文件的查找顺序是当前目录>上层目录>...>根目录>YCM全局目录。
然后问题来了，每次打开文件都会提示是否载入YCM配置文件。  这问题十分烦人，不过也给出了提示，想要关闭这个提示可以参考YCM文档。找到的解决方案如下
`let g:ycm_confirm_extra_conf = 0`
[官方说明](https://github.com/Valloric/YouCompleteMe#the-gycm_confirm_extra_conf-option)表示该选项的默认值为1是为了阻止不是由你写的YCM配置代码，比如你从网上下载一个项目，由于YCM配置文件默认是隐藏文件，所以你也不知道项目目录下包含了YCM配置文件，此时vim打开代码时就会提示你是否载入，从而提醒你项目目录里有YCM配置文件。
所以安全的做法是自己写代码时，可以把该选项设为0，其余情况下保持默认值1。 

### .vimrc中的其他YCM配置选项

```shell
" YouCompleteMe
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'
" C family Completion Path
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" 跳转快捷键
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>| 
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']
```

## tagbar

 显示类/方法/变量 

## vim-buffer

将vim之前的buffer以tab标签页的形式程显

`<leader>d`删除当前buffer

`Ctrl+n`移动buffer

## prepare-code

新建c、cpp、shell等文件时，提供代码模板

## change-colorscheme

`F11`随机切换主题

`F12`显式当前主题名字



# FAQ

- 使用xshell远程访问看不到图标？

Windows端安装fonts目录下的字体,安装完毕后xshell下安装字体即可

![](https://raw.githubusercontent.com/MicoStrong/sharpvim/master/screenshots/xshellfont.png)

- YCM提示找不到文件

  参考插件介绍中YCM部分

-  以上没有我遇到的问题怎么办？

您可以通过上网找解决方法，或提[Issues](https://github.com/MicoStrong/sharpvim/issues)，也可以通过加QQ1120943127、发邮件方式1120943127@qq.com一起讨论解决方法。

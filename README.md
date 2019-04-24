# 关于 #
这个是的emacs的配置文件信息。

## 目录结构 ##
根目录下的.entry.el是总的入口配置文件。适配emacs24及以上版本。

在elisp目录下，
- common：存放通用的配置
- 其它目录则是各种语言环境相关的配置

每个目录下都会有一个.entry.el作为配置入口，然后在根目录的.entry.el中使用load-file方法加载各个环境下的.entry.el配置文件。

# 安装 #

## clone到~/.emacs.d目录 ##

默认情况下，我会将我的配置文件clone到~/.emacs.d目录下，
```
https://github.com/nonamehi/emacs.git ~/.emacs.d
```
然后link emacs，
```
ln -sf ~/.emacs.d/emacs.top ~/.emacs
```

## clone到其它目录 ##

```
ln -sf "/path/to/your/clone/dir" ~/.emacs.d
ln -sf "/path/to/your/clone/dir"/emacs.top ~/.emacs
```

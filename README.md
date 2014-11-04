emacs配置（持续更新）
emacs还真是少数需要花时间折腾的软件，陆陆续续的使用emacs一年了，还是没多大的长进。心不在这上面
给出部分快捷键：
vi的常用键，因为用的是evil-mod
emacs的一些常用键，非编辑类用键
C-x2                will split window vertically
C-x3                will split window horizontally
C-x|                 will split window horizontally instead
C-x_                will split window vertically instead
C-x e               will open ansi-term
C-c ; ?             will look up documentation for the symbol under the point.
C-c ; r              will rescan your Doxygen tags file.
C-c ; f              will insert a Doxygen comment for the next function.
C-c ; i              will insert a Doxygen comment for the current file.
C-c ; ;              will insert a Doxygen comment for the current member.
C-c ; m            will insert a blank multiline Doxygen comment.
C-c ; s             will insert a blank singleline Doxygen comment.
C-c ; @           will insert grouping comments around the current region.
C-c C-c           will comment a region
C-u C-c C-c    will uncomment a region

2013.12.18
我在我的百度云里共享了此配置，附链接
http://yun.baidu.com/share/link?shareid=2015717545&uk=3877060869(已作废)
安装方法：
删除$HOME下的.emacs以及.emacs.d
在$HOME目录下解压，得到emacs.d，改名为.emacs.d

这个配置是我在陈斌的配置的基础上完善的。作了如下修改
修改了一些小BUG
加放cedet，yasnippet，auto-complete，增加C＋＋的编程，解决cedet与auto-complete版本上的兼容性问题
加入自己的主题设置。
加入multi-term，快捷键C-x e

2014.7.20
昨天折腾了10多个小时的emacs，把配置文件再优化了下。现在可以说能摆脱vi了，不过当打开万行以上的代码时还会出问题，没办法，插件进行语法分析什么的嘛。共享配置文件如下：

正常版
http://pan.baidu.com/s/1o6mHYum
daemon版，需用emacsclient运行，度娘看下，很简单
http://pan.baidu.com/s/1pJ0Tc4F

这个版本经之前的要完善的多了，更新内容如下：
加入doxymacs，可以快捷添加标准注释格式，init-doxygen.el里可看快捷键。
加入了verilog-mode，解决了配置中加载代码模板时格式出错的配置冲突。
把终端模式由multi-term改成ansi-term
简化主题包
evil-mode下，在insert模式下加入几个快捷键，C-f，C-b，C-p，C-n， M-b， M-f对应于emacs相应的快捷键。加强文本编辑
加入planner.el，应该说它和org一样出名，强在不同方面。
增强括号匹配，匹配显示的颜色区分

推荐使用daemon版，它解决了emacs启动慢的问题。秒开不是问题

2014.9.1
想着还是把配置放到github上了，方便管理。
https://github.com/mofy2yx/emacs.d.git
改了个小bug，在配置doxymacs时，需要依赖xml-parse.el。其实这个文件在某些版本的emacs里是自带的。但有些就没有，所以为了方便就直接把它扔到配置里了。

2014.11.4
之前弄的了，没记录。因为emacs在某些系统内不能使用系统自带的输入法。所以就配置了ibus，不过后来发现这个东西与evil－mode相冲突，所以又注释掉了。

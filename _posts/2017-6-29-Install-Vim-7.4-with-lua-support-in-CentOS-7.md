---
layout: post
title: Install Vim 7.4 with lua support in CentOS 7
---

Step:
```
yum groupinstall 'Development tools'
yum install ncurses ncurses-devel lua-devel

cd /usr/local/src
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xjf vim-7.4.tar.bz2
cd vim74

./configure --prefix=/usr --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-luainterp

make && make install
```

Test:

`:echo has("lua")`



More:

<http://fullybaked.co.uk/articles/installing-latest-vim-on-centos-from-source>

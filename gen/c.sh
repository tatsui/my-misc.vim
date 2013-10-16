#!/bin/sh
ctags -f ~/.vim/bundle/my-misc.vim/tags/clang --c-kinds=+xp -I __THROW -R /usr/include/

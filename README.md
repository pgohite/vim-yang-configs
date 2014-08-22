vim-yang-ide
============

VIM configurations for yang model developement

Requirements:
  - Vim 7+
  - exuberant ctags (http://ctags.sourceforge.net/)

Vim Plugins:
  - Pathogen plugin manager (optional)
    https://github.com/tpope/vim-pathogen

  - NerdTree Source Tree Plugin
    http://www.vim.org/scripts/script.php?script_id=1658

  - Tagbar plugin
    http://www.vim.org/scripts/script.php?script_id=3465

  - snipMate for syntax completion
    http://www.vim.org/scripts/script.php?script_id=2540

  - Ctrl-P file search (optional)
    http://www.vim.org/scripts/script.php?script_id=3736

Setup: (based on vim on MacOS with Pathogen plugin manager)
  - copy ctags/.ctags to ~/
  - copy vim/yang.vim to ~/.vim/syntax OR ~/.vim/bundle/ (MacOS, Linux)
  - copy vim/yang.snippets to ~/.vim/bundle/snipMate/snippets/yang.snippets

  - DO NOT COPY vim/.vimrc directly to your ~/
    You should update your .vimrc based on config fom vim/.vimrc

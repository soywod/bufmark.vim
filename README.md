# Bufmark.vim

A buffer bookmark manager.

<p align="center">
  <img src="https://user-images.githubusercontent.com/10437171/57775547-90497180-771d-11e9-86f1-eed126e94ffa.gif"></img>
</p>

## Introduction

Bufmark allows you to bookmark buffers like [i3](https://i3wm.org/)'s
workspaces: `Mod+Shift+1` to save the actual position, `Mod+1` to load it.

## Installation

```vim
Plug "soywod/bufmark.vim"
```

## Mappings

Here the default mappings:

*Note: default mappings have been tested on US-like keyboard, consider
customize them if it doesn't work*<br />
*Note: the alt mapping may not work as expected on vim, consider customize
them*

```vim
nmap <a-)> <plug>(bufmark-save-0)
nmap <a-!> <plug>(bufmark-save-1)
nmap <a-@> <plug>(bufmark-save-2)
nmap <a-#> <plug>(bufmark-save-3)
nmap <a-$> <plug>(bufmark-save-4)
nmap <a-%> <plug>(bufmark-save-5)
nmap <a-^> <plug>(bufmark-save-6)
nmap <a-&> <plug>(bufmark-save-7)
nmap <a-*> <plug>(bufmark-save-8)
nmap <a-(> <plug>(bufmark-save-9)

nmap <a-0> <plug>(bufmark-load-0)
nmap <a-1> <plug>(bufmark-load-1)
nmap <a-2> <plug>(bufmark-load-2)
nmap <a-3> <plug>(bufmark-load-3)
nmap <a-4> <plug>(bufmark-load-4)
nmap <a-5> <plug>(bufmark-load-5)
nmap <a-6> <plug>(bufmark-load-6)
nmap <a-7> <plug>(bufmark-load-7)
nmap <a-8> <plug>(bufmark-load-8)
nmap <a-9> <plug>(bufmark-load-9)
```

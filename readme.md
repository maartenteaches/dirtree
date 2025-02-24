*v. 1.4.0*

# `dirtree`: displaying the content of a directory as a tree

## Description

`dirtree` shows inside [Stata](https://www.stata.com) the content of a directory, including sub-directories, as a 
tree. By default, files that can be opened in Stata are shown as clickable links.

For example, the directory for this project looks like this (the bench directory contains various dummy files and directories that are there for testing):

```
. dirtree, nolink
dirtree \
├── dirtree.ado
├── dirtree.pkg
├── dirtree.sthlp
├── readme.md
├── stata.toc
└── bench \
    ├── dirtree.do
    ├── main.do
    ├── subroutine.do
    ├── totest.smcl
    ├── bar \
    └── foo \
        ├── untitled1.do
        ├── blup \
        │   └── untitled2.do
        └── something \
```

## Requirements and use

This package requires [Stata](https://www.stata.com) version 14 or higher. The easiest way to install this is using E. F. Haghish's [github](https://haghish.github.io/github/) command. After you have installed that, you can install `dirtree` by typing in Stata: `github install maartenteaches/dirtree`. Alternatively, `dirtree` can be installed without the `github` command by typing in Stata `net install dirtree, from("https://raw.githubusercontent.com/maartenteaches/dirtree/main")`.

## Author

**Maarten L. Buis**  

University of Konstanz  
maarten.buis@uni.kn  

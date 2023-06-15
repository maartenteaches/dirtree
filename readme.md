*v. 1.0.0*



# `dirtree`: displaying the content of a directory as a tree



## Description

`dirtree` shows inside [Stata](https://www.stata.com) the content of a directory, including sub-directories, as a 
tree. By default, files that can be opened in Stata are shown as clickable links.

For example the directory for this project looks like this (the bench directory contains various dummy files and directories that are there for testing):



```
. dirtree, nolink
dirtree \
├── dirtree.ado
├── dirtree.sthlp
├── readme.md
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

## Requires

[Stata](https://www.stata.com) version 14 or higher

## Author

**Maarten L. Buis**  

University of Konstanz  
maarten.buis@uni.kn  

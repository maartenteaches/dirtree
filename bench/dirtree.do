args home 
cscript "main routine"

log using bench/totest, replace

dirtree 

dirtree, nolink

dirtree, onlydirs

dirtree, dir(bench) hidden
log close
assert "`c(pwd)'" == "`home':\mijn documenten\projecten\stata\dirtree"


tempname fh
file open `fh' using `"bench/totest.smcl"', read text
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
assert `"`line'"'==`". dirtree "'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}│   ├── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}│   ├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}│   ├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}│   ├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}│   └── {res}{stata `"view "`home':\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}└── {res}{stata `"view "`home':\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, nolink"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}│   ├── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}│   ├── {res}dirtree.do"'
file read `fh' line
assert `"`line'"'==`"{txt}│   ├── {res}main.do"'
file read `fh' line
assert `"`line'"'==`"{txt}│   ├── {res}subroutine.do"'
file read `fh' line
assert `"`line'"'==`"{txt}│   └── {res}totest.smcl"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}└── {res}dirtree.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, onlydirs"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}│   └── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, dir(bench) hidden"'
file read `fh' line
assert `"`line'"'==`"{res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}.bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}├── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\.foo.do""' :.foo.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`home':\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}└── {res}{stata `"view "`home':\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'


file close `fh'


dirtree, dir(bench) cd
assert "`c(pwd)'" == "`home':\mijn documenten\projecten\stata\dirtree\bench"
cd ..

exit
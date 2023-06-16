cscript "main routine"

local home = c(pwd)

log using bench/totest, replace

dirtree 

dirtree, nolink

dirtree, onlydirs

dirtree, dir(bench) hidden
log close

assert "`c(pwd)'" == "`home'"

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
assert `"`line'"'==`"├── {res}{stata `"doedit "`c(pwd)'\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"view "`c(pwd)'\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`c(pwd)'\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}└── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    ├── {res}{stata `"doedit "`c(pwd)'\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}{stata `"doedit "`c(pwd)'\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}{stata `"doedit "`c(pwd)'\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}{stata `"view "`c(pwd)'\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    └── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        ├── {res}{stata `"doedit "`c(pwd)'\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}        ├── {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        │   └── {res}{stata `"doedit "`c(pwd)'\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}        └── {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, nolink"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}dirtree.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}readme.md"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}└── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    ├── {res}dirtree.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}main.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}subroutine.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}totest.smcl"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    └── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        ├── {res}untitled1.do"'
file read `fh' line
assert `"`line'"'==`"{txt}        ├── {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        │   └── {res}untitled2.do"'
file read `fh' line
assert `"`line'"'==`"{txt}        └── {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, onlydirs"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"└── {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    ├── {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    └── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        ├── {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        └── {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, dir(bench) hidden"'
file read `fh' line
assert `"`line'"'==`"{res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}{stata `"doedit "`c(pwd)'\bench\.foo.do""' :.foo.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`c(pwd)'\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`c(pwd)'\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"doedit "`c(pwd)'\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}{stata `"view "`c(pwd)'\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}.bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}├── {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}└── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    ├── {res}{stata `"doedit "`c(pwd)'\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    ├── {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    │   └── {res}{stata `"doedit "`c(pwd)'\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    └── {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. log close"'


file close `fh'

local pwd = c(pwd)
dirtree, dir(bench) cd
assert "`c(pwd)'" == "`pwd'\bench"
cd ..

exit
cscript "sub-routines"

do dirtree.ado

//getnames
cd bench
getnames

assert `"`files'"' == `""dirtree.do" "main.do" "subroutine.do" "totest.smcl""'
assert `"`dirs'"' == `""bar" "foo""'

getnames , hidden
assert `"`files'"' == `"".foo.do" "dirtree.do" "main.do" "subroutine.do" "totest.smcl""'
assert `"`dirs'"' == `"".bar" "bar" "foo""'

cd ..

//drophidden
local totest `"".foo  bar" .bar blup bla "en nog wat""'
drophidden `totest'
assert `"`list'"' == `""blup" "bla" "en nog wat""'

//difile
log using bench/totest, replace
difile, file(foo.do) where(c:\temp)
difile, file(foo.ado) where(c:\temp)
difile, file(foo.md) where(c:\temp)
difile, file(foo.mata) where(c:\temp)
difile, file(foo.sthlp) where(c:\temp)
difile, file(foo.hlp) where(c:\temp)
difile, file(foo.smcl) where(c:\temp)
difile, file(foo.txt) where(c:\temp)
difile, file(foo.log) where(c:\temp)
difile, file(foo.dta) where(c:\temp)
difile, file(foo.pdf) where(c:\temp)
difile, file(foo) where(c:\temp)

difile, file(foo.do) where(c:\temp)    nolink 
difile, file(foo.ado) where(c:\temp)   nolink
difile, file(foo.md) where(c:\temp)    nolink
difile, file(foo.mata) where(c:\temp)  nolink
difile, file(foo.sthlp) where(c:\temp) nolink
difile, file(foo.hlp) where(c:\temp)   nolink
difile, file(foo.smcl) where(c:\temp)  nolink
difile, file(foo.txt) where(c:\temp)   nolink
difile, file(foo.log) where(c:\temp)   nolink
difile, file(foo.dta) where(c:\temp)   nolink
difile, file(foo.pdf) where(c:\temp)   nolink
difile, file(foo) where(c:\temp)       nolink
log close


tempname fh
file open `fh' using `"bench/totest.smcl"', read text
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.do) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"doedit "c:\temp\foo.do""' :foo.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.ado) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"doedit "c:\temp\foo.ado""' :foo.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.md) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"doedit "c:\temp\foo.md""' :foo.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.mata) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"doedit "c:\temp\foo.mata""' :foo.mata}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.sthlp) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"view "c:\temp\foo.sthlp""':foo.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.hlp) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"view "c:\temp\foo.hlp""':foo.hlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.smcl) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"view "c:\temp\foo.smcl""':foo.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.txt) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"view "c:\temp\foo.txt""':foo.txt}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.log) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"view "c:\temp\foo.log""':foo.log}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.dta) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"use "c:\temp\foo.dta""':foo.dta}"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.pdf) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}foo.pdf"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo) where(c:\temp)"'
file read `fh' line
assert `"`line'"'==`"{res}foo"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". difile, file(foo.do) where(c:\temp)    nolink "'
file read `fh' line
assert `"`line'"'==`"{res}foo.do"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.ado) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.md) where(c:\temp)    nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.md"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.mata) where(c:\temp)  nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.mata"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.sthlp) where(c:\temp) nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.hlp) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.hlp"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.smcl) where(c:\temp)  nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.smcl"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.txt) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.txt"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.log) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.log"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.dta) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.dta"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo.pdf) where(c:\temp)   nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo.pdf"'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. difile, file(foo) where(c:\temp)       nolink"'
file read `fh' line
assert `"`line'"'==`"{res}foo"'
file read `fh' line
assert `"`line'"'==`"{txt}"'

file close `fh'


exit

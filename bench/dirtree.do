cscript "main routine"

local home = c(pwd)

log using bench/totest, replace 

dirtree 

dirtree, nolink

dirtree, onlydirs

dirtree, dir(bench) hidden

dirtree bench

dirtree, noexp("foo")

dirtree, noexp("with space") nolink

dirtree , noexp

dirtree, maxdepth(1)

dirtree, maxdepth(2)

dirtree, nolink export

dirtree, pattern(*.do *.smcl)
log close

assert "`c(pwd)'" == "`home'"

tempname fh
file open `fh' using `"bench/totest.smcl"', read text
file read `fh' line
assert `"`line'"'==`"{smcl}"'
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
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup""':blup}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c |}   {c BLC}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\something""':something}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, nolink"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}dirtree.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}readme.md"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}dirtree.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}main.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}subroutine.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}totest.smcl"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c LT}{c -}{c -} {res}untitled1.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c LT}{c -}{c -} {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c |}   {c BLC}{c -}{c -} {res}untitled2.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c BLC}{c -}{c -} {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {res}with space{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, onlydirs"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup""':blup}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\something""':something}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, dir(bench) hidden"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\.foo.do""' :.foo.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\.bar""':.bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c |}   {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c |}   {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup""':blup}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c |}   {c |}   {c BLC}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c |}   {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\something""':something}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree bench"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c |}   {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c |}   {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup""':blup}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c |}   {c |}   {c BLC}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c |}   {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\something""':something}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, noexp("foo")"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench\foo",   "':...}"'
file read `fh' line
assert `"`line'"'==`"    {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, noexp("with space") nolink"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}dirtree.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}readme.md"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}bench{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}dirtree.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}main.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}subroutine.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}totest.smcl"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}bar{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c LT}{c -}{c -} {res}untitled1.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c LT}{c -}{c -} {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c |}   {c BLC}{c -}{c -} {res}untitled2.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c BLC}{c -}{c -} {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {res}with space{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        {c BLC}{c -}{c -} {res}..."'
file read `fh' line
assert `"`line'"'==`"{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree , noexp"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench",   "':...}"'
file read `fh' line
assert `"`line'"'==`""'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, maxdepth(1)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench",   "':...}"'
file read `fh' line
assert `"`line'"'==`""'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, maxdepth(2)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\dirtree.ado""' :dirtree.ado}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\dirtree.sthlp""':dirtree.sthlp}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}dirtree.zip"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\readme.md""' :readme.md}"'
file read `fh' line
assert `"`line'"'==`"{txt}{c LT}{c -}{c -} {res}stata.toc"'
file read `fh' line
assert `"`line'"'==`"{txt}{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench\bar",   "':...}"'
file read `fh' line
assert `"`line'"'==`"    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench\foo",   "':...}"'
file read `fh' line
assert `"`line'"'==`"    {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}        {c BLC}{c -}{c -} {stata `"dirtree "D:\mijn documenten\projecten\stata\dirtree\bench\with space",   "':...}"'
file read `fh' line
assert `"`line'"'==`""'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, nolink export"'
file read `fh' line
assert `"`line'"'==`"{res}dirtree{txt} \"'
file read `fh' line
assert `"`line'"'==`"├── {res}dirtree.ado"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.pkg"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.sthlp"'
file read `fh' line
assert `"`line'"'==`"{txt}├── {res}dirtree.zip"'
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
assert `"`line'"'==`"{res}{txt}    ├── {res}foo{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    │   ├── {res}untitled1.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    │   ├── {res}blup{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    │   │   └── {res}untitled2.do"'
file read `fh' line
assert `"`line'"'==`"{txt}    │   └── {res}something{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    └── {res}with space{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. "'
file read `fh' line
assert `"`line'"'==`". dirtree, pattern(*.do *.smcl)"'
file read `fh' line
assert `"`line'"'==`"{res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree""':dirtree}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench""':bench}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\dirtree.do""' :dirtree.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\main.do""' :main.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\subroutine.do""' :subroutine.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"view "D:\mijn documenten\projecten\stata\dirtree\bench\totest.smcl""':totest.smcl}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\bar""':bar}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo""':foo}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c LT}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\untitled1.do""' :untitled1.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c LT}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup""':blup}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c |}   {c |}   {c BLC}{c -}{c -} {res}{stata `"doedit "D:\mijn documenten\projecten\stata\dirtree\bench\foo\blup\untitled2.do""' :untitled2.do}"'
file read `fh' line
assert `"`line'"'==`"{txt}    {c |}   {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\foo\something""':something}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}    {c BLC}{c -}{c -} {res}{stata `"cd "D:\mijn documenten\projecten\stata\dirtree\bench\with space""':with space}{txt} \"'
file read `fh' line
assert `"`line'"'==`"{res}{txt}"'
file read `fh' line
assert `"`line'"'==`"{com}. log close"'
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
file read `fh' line
assert r(eof)==1
file close `fh'



local pwd = c(pwd)
dirtree bench, cd
assert "`c(pwd)'" == "`pwd'\bench"
cd ..

exit

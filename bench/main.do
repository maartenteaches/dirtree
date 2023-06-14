local home = "D"
*local home = "C"
cd "`home':\mijn documenten\projecten\stata\dirtree"
cscript dirtree adofiles dirtree.ado

do bench/dirtree.do "`home'"
do bench/subroutine.do "`home'"

exit

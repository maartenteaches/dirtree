*! version 1.0.0 14Jun2023 MLB
program define dirtree
    version 14
    syntax, [dir(string) cd] *

    local odir = c(pwd)

    if `"`dir'"' != "" {
        qui cd `"`dir'"'
    }
    
    capture noisily main, `options'
    
    if _rc {
        cd `"`odir'"'
        exit _rc
    }
    
    if "`cd'" == ""  {
        qui cd `"`odir'"'
    }
end 

program define main
    version 14
    syntax, [level(integer 0) hidden ONLYDirs where(string) nolink]
    
    getnames, `hidden'  // makes locals dirs and files
    
    local kd : word count `dirs'
    local kf : word count `files'
    local nofiles = (`kf'==0 | "`onlydirs'" != "")
    
    local lastchild `"as txt "└── ""'
    local child `"as txt "├── ""'
    local directory =  `level'*"│   "
    local directory `"as txt "`directory'""'
    local enddir `" as txt " \""'

    if `level' == 0 {
        mata: st_local("root",pathbasename(st_global("c(pwd)")))
        di as result "`root'"  `enddir'
        local where = c(pwd)
    }

    local i = 1
    foreach dir of local dirs {
        anythingthere `dir', `hidden' `onlydirs'
        if `i++' == `kd' & `nofiles' == 1 &  "`s(anything)'" == "nothing" {
            di `directory'`lastchild' as result "`dir'"  `enddir'
        }
        else {
            di `directory'`child'  as result "`dir'" `enddir'
        }
        qui cd "`dir'"
        mata : st_local("where_out", pathjoin("`where'", "`dir'"))
        main, level(`=`level'+1') `hidden' `onlydirs' where("`where_out'") `link'
        qui cd ..
    }
    if "`onlydirs'" == "" {
        local i = 1
        foreach file of local files {
            if (`i++' == `kf') {
                di `directory'`lastchild' _continue
            }
            else {
                di `directory'`child' _continue
            }
            difile, file("`file'") where("`where'") `link'
        }
    }
end

program define getnames
    version 14
    syntax, [hidden]
    
    local dirs: dir "." dirs "*"
    local result = ""
    if "`hidden'" == "" & `"`dirs'"' != "" {
        drophidden `dirs'
        local dirs = `"`list'"'
    }
    
    local files: dir "." files "*"
    local result = ""
    if "`hidden'" == "" & `"`files'"' != "" {
        drophidden `files'
        local files = `"`list'"'
    }    
    c_local dirs `"`dirs'"'
    c_local files = `"`files'"'
end 

program define drophidden
    version 14
    syntax anything(name=list)
    
    local result = ""
    foreach element of local list {
        if substr("`element'",1,1) != "." {
            local result = `"`result' "`element'""'
        }
    }
    local list = strtrim(`"`result'"')
    c_local list `"`list'"'
end

program define anythingthere, sclass
    version 14
    syntax anything(name=dir), [hidden onlydirs]
    
    local childfiles : dir "`dir'" files "*"
    local childdirs : dir "`dir'" dirs "*"
    
    local something "nothing"
    if "`onlydirs'" == "" {
        foreach file of local childfiles {
            if "`hidden'" == "" {
                 if substr("`file'",1,1) != "." {
                    local something = "something"
                    continue, break
                }
            }
            else {
                local something = "something"
                continue, break
            }
        }
    }
    foreach dir of local childdirs {
        if "`hidden'" == "" {
            if substr("`dir'",1,1) != "." {
                local something = "something"
                continue, break
            }
        }
        else {
            local something = "something"
            continue, break
        }
    }


    sreturn local anything = "`something'"
    
end

program define difile
    version 14
    syntax, file(string) where(string) [nolink]
    
    mata: st_local("suffix", pathsuffix("`file'"))
    mata: st_local("path", pathjoin("`where'","`file'"))

    local doedit ".ado .do .mata .mps .mpb .md"
    local view ".sthlp .hlp .smcl .txt .log"
    
    if `: list suffix in doedit' & "`link'" == "" {
        di `"{stata `"doedit "`path'""' :`file'}"'
    }
    else if `: list suffix in view' & "`link'" == "" {
        di `"{stata `"view "`path'""':`file'}"'
    }
    else if "`suffix'" == ".dta" & "`link'" == "" {
        di `"{stata `"use "`path'""':`file'}"'
    }
    else {
        di as result "`file'"
    }
end



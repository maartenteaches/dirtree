*! version 1.0.0 14Jun2023 MLB
program define dirtree
    version 14
    syntax, [dir(string) cd] *

    local odir = c(pwd)

    if `"`dir'"' != "" {
        qui cd `"`dir'"'
    }
    
    capture noisily main, `options' directory("")
    
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
    syntax, [directory(string) hidden ONLYDirs where(string) nolink]
    
    getnames, `hidden'  // makes locals dirs and files
    
    local kd : word count `dirs'
    local kf : word count `files'
    
    local lastchild `"as txt "└── ""'
    local child `"as txt "├── ""'
    local enddir `" as txt " \""'

    if "`directory'" == "" {
        mata: st_local("root",pathbasename(st_global("c(pwd)")))
        di as result "`root'"  `enddir'
        local where = c(pwd)
    }
    
    if "`onlydirs'" == "" {
        local i = 1
        foreach file of local files {
            if (`i++' == `kf' & `kd' == 0) {
                di as txt "`directory'"`lastchild' _continue
            }
            else {
                di as txt "`directory'"`child' _continue
            }
            difile, file("`file'") where("`where'") `link'
        }
    }
    
    local i = 1
    foreach dir of local dirs {
        if `i++' == `kd'  {
            local newdirectory "`directory'    "
            di as txt "`directory'"`lastchild' as result "`dir'"  `enddir'
        }
        else {
            local newdirectory "`directory'│   "
            di as txt "`directory'"`child'  as result "`dir'" `enddir'
        }
        qui cd "`dir'"
        mata : st_local("where_out", pathjoin("`where'", "`dir'"))
        main, directory("`newdirectory'") `hidden' `onlydirs' where("`where_out'") `link'
        qui cd ..
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

program define difile
    version 14
    syntax, file(string) where(string) [nolink]
    
    mata: st_local("suffix", pathsuffix("`file'"))
    mata: st_local("path", pathjoin("`where'","`file'"))

    local doedit ".ado .do .mata .mps .mpb .md"
    local view ".sthlp .hlp .smcl .txt .log"
    
    if `: list suffix in doedit' & "`link'" == "" & `"`suffix'"' != "" {
        di `"{stata `"doedit "`path'""' :`file'}"'
    }
    else if `: list suffix in view' & "`link'" == "" & `"`suffix'"' != ""  {
        di `"{stata `"view "`path'""':`file'}"'
    }
    else if "`suffix'" == ".dta" & "`link'" == "" {
        di `"{stata `"use "`path'""':`file'}"'
    }
    else {
        di as result "`file'"
    }
end



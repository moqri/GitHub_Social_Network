cd 
local i=0
cap erase mybigfile.dta
local files : dir . files "*.csv"

foreach f of local files {
drop _all
insheet using "`f'"
if `i'>0 append using mybigfile
save mybigfile, replace
local i=1
}

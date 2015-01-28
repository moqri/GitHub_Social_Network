forvalues i = 2(1)2406053 {
display `i'
local j=`i'-1
if id[`i']==id[`j']{
local x=tf in `j'
local y=nf in `i'
local z=`x'+`y'
replace tf=`z' in `i'
}
else {
replace tf=nf in `i'
}
}

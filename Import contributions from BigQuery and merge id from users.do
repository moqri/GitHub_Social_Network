import delimited "C:\Users\moqri\Desktop\1404.txt", clear 
ren actor_attributes_login login
merge m:1 login using "C:\Users\moqri\Desktop\Users.dta", keep(match)
drop _merge
gen month="2014-04"
save "C:\Users\moqri\Desktop\1404.dta"

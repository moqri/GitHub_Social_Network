xtset id m
xtreg count count1 nf1 nf2 nfo1 nf1s nf2s nfo1s tf tfo ten comp
estimates store allran
xtreg count count1 nf1 nf2 nfo1 nf1s nf2s nfo1s tf tfo ten comp,fe
estimates store allfix
drop if count>3000
xtreg count count1 nf1 nf2 nfo1 nf1s nf2s nfo1s tf tfo ten comp
estimates store outran
xtreg count count1 nf1 nf2 nfo1 nf1s nf2s nfo1s tf tfo ten comp,fe
estimates store outfix
xtabond count nf1 nf2 nfo1 nf1s nf2s nfo1s tf tfo ten comp
estimates store outabond

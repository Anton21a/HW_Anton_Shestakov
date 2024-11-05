cd "C:/Users/Shestakov_Anton/Documents/dataHW/"

use "epl_totalpoints.dta", clear

generate ratio = points_season/goaldiff_season

generate rate = 1 if points_season > 70
replace rate = 0 if points_season <= 70

label define team_labels 1 "top_team" 0 "non_top_team"
label values rate team_labels

summarize 

describe

graph bar (mean) goaldiff, over(team), if rate == 1 & season == 2008

graph export "goaldiff_topTeam.png", replace






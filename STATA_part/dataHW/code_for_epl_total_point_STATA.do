cd "C:/Users/Shestakov_Anton/Documents/dataHW/"

use "epl_totalpoints.dta", clear

generate ratio = points_season/goaldiff_season

generate rate = 1 if points_season > 70
replace rate = 0 if points_season <= 70

label define team_labels 1 "top_team" 0 "non_top_team"
label values rate team_labels

summarize 

describe

tabulate rate, missing

// display missing("")

// now let's transform our data set by adding limitation
keep if season > 2008 & season < 2010

// and also let's create some aggregate data

egen n_team = count(team), by(rate)
egen average_goaldiff = mean(goaldiff_season), by(rate)
describe

// save our modification
save "epl_totalpoints2.dta", replace
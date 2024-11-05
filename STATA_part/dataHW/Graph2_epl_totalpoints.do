cd "C:/Users/Shestakov_Anton/Documents/dataHW/"

use "epl_totalpoints.dta", clear

generate ratio = points_season/goaldiff_season

generate rate = 1 if points_season > 70
replace rate = 0 if points_season <= 70

label define team_labels 1 "top_team" 0 "non_top_team"
label values rate team_labels

twoway scatter points_season goaldiff_season, jitter(7)
// with this graph we got a clear correlation between sum points and goal 
// difference among teams in EPL championship. 

graph export "scatterPlot.png", replace
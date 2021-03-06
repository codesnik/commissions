carrier "KE"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "5%"
subagent "3%"
agent_comment "С 01.04.2011г. 5% от опубл. тарифов на собств. рейсы KE с пунктом начала маршрута в России."
subagent_comment "С 01.04.2011г. 3% от опубл. тарифов на собств. рейсы KE с пунктом начала маршрута в России."
routes "RU..."
example "svogmp"
end

rule 2 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "0%"
subagent "0%"
consolidator "2%"
agent_comment "С 01.04.2011г. 0% от опубл. тарифов на собств. рейсы KE с пунктом начала маршрута вне России."
subagent_comment "С 01.04.2011г. 0% от опубл. тарифов на собств. рейсы KE с пунктом начала маршрута вне России."
check %{ not includes(country_iatas.first, 'RU') }
example "gmpsvo"
end

rule 3 do
no_commission
example "svoicn icnsvo/ab"
end


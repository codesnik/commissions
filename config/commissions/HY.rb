carrier "HY", no_commission: "не bsp"

rule 1 do
no_commission "не bsp"
ticketing_method "aviacenter"
agent "7%"
subagent "5%"
agent_comment "7% от опубл. тарифов на собств. рейсы HY"
subagent_comment "5% от опубл. тарифов на собств. рейсы HY"
example "svocdg"
end

rule 2 do
no_commission "не bsp"
ticketing_method "aviacenter"
agent "0%"
subagent "0%"
consolidator "2%"
agent_comment "0% от опубл. тарифов на рейсы Interline"
subagent_comment "0% от опубл. тарифов на рейсы Interline"
interline :yes
example "svocdg cdgsvo/ab"
end


carrier "KM"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "1%"
subagent "0.5%"
agent_comment "1% от опубл. тарифов на собств. рейсы KM"
subagent_comment "0,5% от опубл. тарифа на рейсы KM"
example "svocdg"
end

rule 2 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "1%"
subagent "0.5%"
agent_comment "1% от опубл. тарифов на рейсы Interline"
subagent_comment "0,5% от опубл. тарифа на рейсы Interline"
interline :yes
example "svocdg cdgsvo/ab"
end


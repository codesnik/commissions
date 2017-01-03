carrier "AM"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "9%"
subagent "7%"
agent_comment "9% от всех опубликованных тарифов"
subagent_comment "7% от опубл. тарифов на рейсы AM"
interline :no, :yes
example "SVOCDG"
end


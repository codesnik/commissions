carrier "MD"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "1%"
subagent "0.5%"
agent_comment "1 (Один) % от всех опубл. тарифов на собств. рейсы авиакомпании MD"
subagent_comment "0.5% с билета по опубл. тарифам на собств. рейсы MD"
interline :no, :unconfirmed
example "svocdg"
end


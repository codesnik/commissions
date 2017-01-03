carrier "S4"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "1%"
subagent "0.5%"
agent_comment "1% от всех опубл. тарифов на собств.рейсы S4 (В договоре Interline не прописан.)"
subagent_comment "0,5% от опубл. тарифа на собств. рейсы S4"
interline :no, :unconfirmed
example "svocdg"
example "cdgsvo svocdg/ab"
end


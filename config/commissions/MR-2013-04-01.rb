carrier "MR", start_date: "2013-04-01"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "3%"
subagent "2%"
agent_comment "3% от всех опубликованных тарифов на собственные рейсы авиакомпании"
subagent_comment "Субагентская для MR будет 2%"
end


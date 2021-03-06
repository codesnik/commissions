carrier "R3"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "6%"
subagent "4%"
agent_comment "6 % от всех опубл. тарифов на все собств.рейсы Авиакомпании;"
subagent_comment "4% от всех опубл. тарифов на все собств.рейсы Авиакомпании;"
example "svocdg cdgsvo"
end

rule 2 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "4%"
subagent "3%"
agent_comment "4 % от всех опубл. тарифов на все рейсы, выполняемые Интерлайн-партнерами Авиакомпании."
subagent_comment "3% от всех опубл. тарифов на все рейсы, выполняемые Интерлайн-партнерами"
interline :yes
example "ykscdg/ab cdgyks"
end


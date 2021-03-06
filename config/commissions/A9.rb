carrier "A9"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "8%"
subagent "6%"
agent_comment "8 (восемь) % от опубл. тарифа на собств. рейсы авиакомпании А9;"
subagent_comment "6 % от опубл. тарифа на собств. рейсы А9;"
example "tbsdme"
end

rule 2 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "7%"
subagent "5%"
agent_comment "7 (семь)  % от опубл. тарифа по маршрутам со сквозными тарифами, включающими участок авиакомпании  А9 и авиакомпаний, с которыми А9 имеет Интерлайн-Соглашение;"
subagent_comment "5 % от опубл. тарифа по маршрутам со сквозными тарифами, включающими участок авиакомпании А9 и авиакомпаний, с которыми А9 имеет Интерлайн-Соглашение"
interline :yes
example "tbsdme dmetbs/ab"
end

rule 3 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "5%"
subagent "3%"
agent_comment "5 (пять)   % от опубл. тарифа на рейсы Interline без участка А9."
subagent_comment "3 % от опубл. тарифа на рейсы Interline без участка А9."
interline :absent
example "dmetbs/ab"
end


carrier "U6", start_date: "2013-04-01"

rule 1 do
ticketing_method "aviacenter"
agent "7%"
subagent "5%"
agent_comment "7% от суммы тарифов всех подклассов Бизнес класса обслуживания, полученной от продажи международных перевозок (дальнее зарубежье)"
subagent_comment "5% от суммы тарифов всех подклассов Бизнес класса обсл., полученной от продажи международных перевозок (дальнее зарубежье);"
classes :business
international
example "svocdg/business cdgsvo/business"
end

rule 2 do
ticketing_method "aviacenter"
agent "5%"
subagent "3%"
agent_comment "5% от суммы тарифов всех подклассов Эконом класса обслуживания, полученной от продажи международных перевозок (дальнее зарубежье)"
subagent_comment "3% от суммы тарифов всех подклассов Эконом класса обсл., полученной от продажи международных перевозок (дальнее зарубежье)"
international
example "svocdg cdgsvo"
end

rule 3 do
important!
ticketing_method "aviacenter"
agent "5%"
subagent "3%"
comment "Россия СНГ и Грузия"
agent_comment "5% от тарифов перевозок по России, СНГ и Грузии всех подклассов и классов обслуживания (за исключением маршрутов Групп А и Б)."
subagent_comment "3% от тарифов перевозок по СНГ и Грузии всех подклассов и классов обслуживания (за искл. маршрутов Групп А и Б)"
check %{ includes_only(country_iatas, 'RU AZ AM BY KZ KG MD TJ TM UZ UA GE') }
example "svotbs"
example "tbsiev"
end

rule 4 do
ticketing_method "aviacenter"
agent "3%"
subagent "1%"
comment "интерлайны"
agent_comment "3% от примененных тарифов на сегментах перевозки рейсов интерлайн-партнеров U6 ( наличие участка U6 в билете обязательно)"
subagent_comment "1% от примененных тарифов на рейсы интерлайн-партнеров U6 (наличие участка U6 в билете обязательно)"
interline :yes
check %{ not includes(operating_carrier_iatas, 'NN S7') }
example "svocdg/ab cdgsvo"
end

rule 5 do
ticketing_method "aviacenter"
agent "10"
subagent "10"
comment "интерлайны"
agent_comment "10 рублей за каждый участок перевозки, если в перевозке участвуют S7 и NN."
subagent_comment "10 рублей за каждый участок перевозки, если в перевозке участвуют S7 и NN."
interline :yes
check %{ includes(operating_carrier_iatas, 'NN S7') }
example "svocdg/s7 cdgsvo"
end

rule 6 do
ticketing_method "aviacenter"
agent "1"
subagent "0.05"
consolidator "2%"
comment "пункт 3"
agent_comment "1 (один) рубль продажа перевозок на рейсы интерлайн-партнеров U6 без участков U6"
subagent_comment "5 коп. продажа перевозок на рейсы интерлайн-партнеров U6 без участков U6"
interline :absent
example "svocdg/ab cdgsvo/ab"
end

rule 7 do
not_implemented "не умеем определять конфиденциальные тарифы"
ticketing_method "aviacenter"
agent_comment "1 (один) рубль за каждый выписанный авиабилет по конфиденциальным IT тарифам."
subagent_comment "5 (пять) руб. за каждый выписанный авиабилет по конфиденциальным IT тарифам."
end

rule 8 do
important!
ticketing_method "aviacenter"
agent "5%"
subagent "3%"
agent_comment "Самара-Душанбе-Самара повысили вознаграждение до 5% (3%) (т.е. исключили из Группы  А)."
subagent_comment "Самара-Душанбе-Самара повысили вознаграждение до 5% (3%) (т.е. исключили из Группы  А)."
routes "KUF-DYU/OW,RT"
example "kufdyu"
end

rule 9 do
important!
ticketing_method "aviacenter"
agent "0.1%"
subagent "0.5"
consolidator "2%"
comment "группа А "
agent_comment "ГРУППА А:"
agent_comment "в размере 0,1%:"
agent_comment "*от суммы тарифов (опубликованных в АСБ) по маршрутам:"
agent_comment "*за каждый взятый с пассажира штраф при оформлении возврата или обмена авиабилетов с взиманием штрафных санкций;"
subagent_comment "c 01.04.2013 г. 50 коп с билета по маршрутам:"
routes "MOW-KGD,KZN,UFA,LED,KUF,GOJ,KRR,AER,AAQ,GBB,BAK,GDZ,KVD,LLK,SIP,MRV/OW,RT", "SVX-AER,KZN,SIP,KUF,YKS,HTA,AAQ,UFA,GDZ,EVN,KHV,VVO,KRR,KJZ,PKC,BAK,TBS/OW,RT", "LED-LWN,LLK,VVO,IKT,KHV,YKS/OW,RT", "KUF-AAQ/OW,RT", "KUF-AER/OW,RT", "KUF-LBD/OW,RT", "CEK-GOJ,TAS/OW,RT", "PEE-DYU,LBD/OW,RT", "UFA-LBD,DYU/OW,RT", "KJA-IKT,MRV/OW,RT", "MRV-AER/OW,RT", "SIP-GOJ/OW,RT", "EVN-GOJ,KUF/OW,RT", "KRR-VVO,OVB/OW,RT", "GOJ-TAS,SIP,NMA/OW,RT", "IKT-PKC/OW,RT"
example "ledllk"
example "svokzn"
example "kuflbd"
example "krrovb"
end

rule 10 do
important!
ticketing_method "aviacenter"
agent "0.1%"
subagent "0.5"
consolidator "2%"
agent_comment "0.1% Москва-Тиват; Тиват-Москва; Москва-Тиват-Москва; Тиват-Москва-Тиват;"
subagent_comment "0.5 Москва-Тиват; Тиват-Москва; Москва-Тиват-Москва; Тиват-Москва-Тиват;"
routes "MOW-TIV/ALL"
example "svotiv"
example "tivsvo"
example "svotiv tivsvo"
end

rule 11 do
important!
ticketing_method "aviacenter"
agent "3%"
subagent "1%"
comment "группа Б SPECIAL FOR CHITA"
agent_comment "ГРУППА Б: 3 (три) % от тарифа по всем подклассам по маршрутам: Москва-Чита; Чита-Москва; Москва-Чита-Москва; Чита-Москва-Чита;"
subagent_comment "1 (Один) % от тарифа по всем подклассам по маршрутам: Москва-Чита; Чита-Москва; Москва-Чита-Москва; Чита-Москва-Чита;"
routes "MOW-HTA/ALL"
example "svohta"
end


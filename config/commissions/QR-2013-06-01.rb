carrier "QR", start_date: "2013-06-01"

rule 1 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "5%"
subagent "3.5%"
agent_comment "от опубл. тарифов, а также от опубл. IT гросс тарифов (искл.групповые тарифы) на собств.рейсы QR: 5% Бизнес класс"
subagent_comment "3,5% от опубл. тарифов на собственные рейсы QR"
classes :first, :business
example "cdgpek/business pekcdg/business"
end

rule 2 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "0.1%"
subagent "0.05"
consolidator "2%"
agent_comment "0.1% Эконом класса, а также при различной комбинации Бизнес/Эконом"
subagent_comment "5 коп. с билета Эконом класса, а также при различной комбинации Бизнес/Эконом;"
example "cdgpek/economy pekcdg/economy"
example "cdgpek/business pekcdg/economy"
end

rule 3 do
disabled "aviacenter shutdown"
important!
ticketing_method "aviacenter"
agent "0.1%"
subagent "0.05"
consolidator "2%"
comment "вынес в отдельное на всякий случай"
agent_comment "0.1% Эконом класса, а также при различной комбинации Бизнес/Эконом"
subagent_comment "5 коп. с билета Эконом класса, а также при различной комбинации Бизнес/Эконом;"
subclasses "OQ"
example "cdgpek/o pekcdg/o"
example "cdgpek/q pekcdg/o"
end

rule 4 do
disabled "Маша попросила выключить DTT"
important!
ticketing_method "downtown"
agent "5%"
subagent "3%"
tour_code "USAN002"
agent_comment "с сегодня на QR если в маршруте есть Россия (OW/RT, origin/destination) - агентская 5%"
subagent_comment "у нас 3%"
check %{ includes(country_iatas, 'RU') and not includes(booking_classes, "Q O") }
example "jfksvo"
example "jfkled ledcdg"
end

rule 5 do
disabled "aviacenter shutdown"
ticketing_method "aviacenter"
agent "0.1%"
subagent "0.05"
consolidator "2%"
agent_comment "0.1% на опубл. гросс тарифы в случае комбинации с другими авиакомпаниями (вознаграждение выплачивается лишь в случаях, когда хотя бы один полетный сегмент забронирован под кодом QR и весь маршрут выписан одним билетом). +сбор АЦ 2% от тарифа Интерлайн без участия перевозчика –  запрещен  !!!"
subagent_comment "5 коп на опубл. гросс тарифы в случае комбинации с другими авиакомпаниями (вознаграждение выплачивается лишь в случаях, когда хотя бы один полетный сегмент забронирован под кодом QR и весь маршрут выписан одним билетом). +сбор АЦ 2% от тарифа Интерлайн без участия перевозчика –  запрещен  !!!"
interline :yes
example "svocdg cdgsvo/ab"
end

rule 6 do
no_commission
example "cdgsvo/ab"
end


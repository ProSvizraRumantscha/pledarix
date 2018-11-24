select id, 'Grischun' as Language, Grischun_display as Display, Grischun_Search as Search from alllanguages
where length(Grischun_Display) = length(grischun_search) and
Grischun_Display <> grischun_search and
grischun_display is not null and grischun_search is not null
and grischun_display <> '' and grischun_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Sursilvan', Sursilvan_Display, sursilvan_search from alllanguages
where length(Sursilvan_Display) = length(sursilvan_search) and
sursilvan_Display <> sursilvan_search and
sursilvan_display is not null and grischun_search is not null
and sursilvan_display <> '' and sursilvan_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Sutsilvan', sutsilvan_Display, sutsilvan_search from alllanguages
where length(sutsilvan_Display) = length(sutsilvan_search) and
sutsilvan_Display <> sutsilvan_search and
sutsilvan_display is not null and sutsilvan_search is not null
and sutsilvan_display <> '' and sutsilvan_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Surmiran', surmiran_Display, surmiran_search from alllanguages
where length(surmiran_Display) = length(surmiran_search) and
surmiran_Display <> surmiran_search and
surmiran_display is not null and surmiran_search is not null
and surmiran_display <> '' and surmiran_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Putèr', puter_Display, puter_search from alllanguages
where length(puter_Display) = length(puter_search) and
puter_Display <> puter_search and
puter_display is not null and puter_search is not null
and puter_display <> '' and puter_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Vallader', vallader_Display, vallader_search from alllanguages
where length(vallader_Display) = length(vallader_search) and
vallader_Display <> vallader_search and
vallader_display is not null and vallader_search is not null
and vallader_display <> '' and vallader_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Deutsch', german_Display, german_search from alllanguages
where length(german_Display) = length(german_search) and
german_Display <> german_search and
german_display is not null and german_search is not null
and german_display <> '' and german_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Franzöisch', french_Display, french_search from alllanguages
where length(french_Display) = length(french_search) and
french_Display <> french_search and
french_display is not null and french_search is not null
and french_display <> '' and french_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Italienisch', italian_Display, italian_search from alllanguages
where length(italian_Display) = length(italian_search) and
italian_Display <> italian_search and
italian_display is not null and italian_search is not null
and italian_display <> '' and italian_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')

union

select id, 'Englisch', english_Display, english_search from alllanguages
where length(english_Display) = length(english_search) and
english_Display <> english_search and
english_display is not null and english_search is not null
and english_display <> '' and english_search <> '' and
lexical_class_d not in ('Ordnungszahl', 'Kardinalzahl')
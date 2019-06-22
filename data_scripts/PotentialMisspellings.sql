-------
-- Search for potential spell errors. Execute this skript on Alllanguages AND check the values. Correct manually if necessary
-------

SELECT id, 'Grischun' AS Language, Grischun_display AS Display, Grischun_Search AS Search 
FROM alllanguages
WHERE 	LENGTH(Grischun_Display) = LENGTH(grischun_search) AND
		Grischun_Display <> grischun_search AND
		grischun_display IS NOT NULL AND grischun_search IS NOT NULL AND 
		grischun_display <> '' AND grischun_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Sursilvan', Sursilvan_Display, sursilvan_search 
FROM alllanguages
WHERE 	LENGTH(Sursilvan_Display) = LENGTH(sursilvan_search) AND
		sursilvan_Display <> sursilvan_search AND
		sursilvan_display IS NOT NULL AND grischun_search IS NOT NULL AND
		sursilvan_display <> '' AND sursilvan_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Sutsilvan', sutsilvan_Display, sutsilvan_search 
FROM alllanguages
WHERE 	LENGTH(sutsilvan_Display) = LENGTH(sutsilvan_search) AND
		sutsilvan_Display <> sutsilvan_search AND
		sutsilvan_display IS NOT NULL AND sutsilvan_search IS NOT NULL AND
		sutsilvan_display <> '' AND sutsilvan_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Surmiran', surmiran_Display, surmiran_search 
FROM alllanguages
WHERE 	LENGTH(surmiran_Display) = LENGTH(surmiran_search) AND
		surmiran_Display <> surmiran_search AND
		surmiran_display IS NOT NULL AND surmiran_search IS NOT NULL AND
		surmiran_display <> '' AND surmiran_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Putèr', puter_Display, puter_search 
FROM alllanguages
WHERE 	LENGTH(puter_Display) = LENGTH(puter_search) AND
		puter_Display <> puter_search AND
		puter_display IS NOT NULL AND puter_search IS NOT NULL AND
		puter_display <> '' AND puter_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Vallader', vallader_Display, vallader_search 
FROM alllanguages
WHERE 	LENGTH(vallader_Display) = LENGTH(vallader_search) AND
		vallader_Display <> vallader_search AND
		vallader_display IS NOT NULL AND vallader_search IS NOT NULL AND
		vallader_display <> '' AND vallader_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Deutsch', german_Display, german_search 
FROM alllanguages
WHERE 	LENGTH(german_Display) = LENGTH(german_search) AND
		german_Display <> german_search AND
		german_display IS NOT NULL AND german_search IS NOT NULL AND
		german_display <> '' AND german_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Franzöisch', french_Display, french_search 
FROM alllanguages
WHERE 	LENGTH(french_Display) = LENGTH(french_search) AND
		french_Display <> french_search AND
		french_display IS NOT NULL AND french_search IS NOT NULL AND
		french_display <> '' AND french_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Italienisch', italian_Display, italian_search 
FROM alllanguages
WHERE 	LENGTH(italian_Display) = LENGTH(italian_search) AND
		italian_Display <> italian_search AND
		italian_display IS NOT NULL AND italian_search IS NOT NULL AND
		italian_display <> '' AND italian_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')

UNION

SELECT id, 'Englisch', english_Display, english_search 
FROM alllanguages
WHERE 	LENGTH(english_Display) = LENGTH(english_search) AND
		english_Display <> english_search AND
		english_display IS NOT NULL AND english_search IS NOT NULL AND
		english_display <> '' AND english_search <> '' AND
		lexical_class_d NOT IN ('Ordnungszahl', 'Kardinalzahl')
---------
-- trying to remove special character, but not suceeded yet...
---------


SELECT * FROM Alllanguages
WHERE 	grischun_display LIKE '%%' OR
		grischun_search LIKE '%%' OR
        sursilvan_display LIKE '%%' OR
		sursilvan_search LIKE '%%' OR
        sutsilvan_display LIKE '%%' OR
		sutsilvan_search LIKE '%%' OR
        surmiran_display LIKE '%%' OR
		surmiran_search LIKE '%%' OR
        puter_display LIKE '%%' OR
		puter_search LIKE '%%' OR
        vallader_display LIKE '%%' OR
		vallader_search LIKE '%%' OR
		german_display LIKE '%%' OR
		german_search LIKE '%%' OR
		english_display LIKE '%%' OR
		english_search LIKE '%%' OR
		italian_display LIKE '%%' OR
		italian_search LIKE '%%' OR
		french_display LIKE '%%' OR
		french_search LIKE '%%' OR
		conjugation LIKE '%%' OR
		lexical_class_d LIKE '%%' OR
        lexical_class_r LIKE '%%';
/*
UPDATE Alllanguages
SET grischun_display = REPLACE(grischun_display, '%\uc285%', ''),
		grischun_search = REPLACE(grischun_search, '%\uc285%', ''),
        sursilvan_display = REPLACE(sursilvan_display, '%\uc285%', ''),
		sursilvan_search = REPLACE(sursilvan_search, '%\uc285%', ''),
        sutsilvan_display = REPLACE(sutsilvan_display, '%\uc285%', ''),
		sutsilvan_search = REPLACE(sutsilvan_search, '%\uc285%', ''),
        sutsilvan_search = REPLACE(surmiran_display, '%\uc285%', ''),
		surmiran_search = REPLACE(surmiran_search, '%\uc285%', ''),
        puter_display = REPLACE(puter_display, '%\uc285%', ''),
		puter_search = REPLACE(puter_search, '%\uc285%', ''),
        vallader_display = REPLACE(vallader_display, '%\uc285%', ''),
		vallader_search = REPLACE(vallader_search, '%\uc285%', ''),
		german_display = REPLACE(german_display, '%\uc285%', ''),
		german_search = REPLACE(german_search, '%\uc285%', ''),
		english_display = REPLACE(english_display, '%\uc285%', ''),
		english_search = REPLACE(english_search, '%\uc285%', ''),
		italian_display = REPLACE(italian_display, '%\uc285%', ''),
		italian_search = REPLACE(italian_search, '%\uc285%', ''),
		french_display = REPLACE(french_display, '%\uc285%', ''),
		french_search = REPLACE(french_search, '%\uc285%', ''),
		conjugation = REPLACE(conjugation, '%\uc285%', ''),
		lexical_class_d = REPLACE(lexical_class_d, '%\uc285%', ''),
        lexical_class_r = REPLACE(lexical_class_r, '%\uc285%', '')
WHERE 	grischun_display LIKE '%%' OR
		grischun_search LIKE '%%' OR
        sursilvan_display LIKE '%%' OR
		sursilvan_search LIKE '%%' OR
        sutsilvan_display LIKE '%%' OR
		sutsilvan_search LIKE '%%' OR
        surmiran_display LIKE '%%' OR
		surmiran_search LIKE '%%' OR
        puter_display LIKE '%%' OR
		puter_search LIKE '%%' OR
        vallader_display LIKE '%%' OR
		vallader_search LIKE '%%' OR
		german_display LIKE '%%' OR
		german_search LIKE '%%' OR
		english_display LIKE '%%' OR
		english_search LIKE '%%' OR
		italian_display LIKE '%%' OR
		italian_search LIKE '%%' OR
		french_display LIKE '%%' OR
		french_search LIKE '%%' OR
		conjugation LIKE '%%' OR
		lexical_class_d LIKE '%%' OR
        lexical_class_r LIKE '%%';
*/

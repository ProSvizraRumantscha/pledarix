---------
-- trying to remove special character, but not suceeded yet...
---------


select * from alllanguages
where 	grischun_display like '%%' or
		grischun_search like '%%' or
        sursilvan_display like '%%' or
		sursilvan_search like '%%' or
        sutsilvan_display like '%%' or
		sutsilvan_search like '%%' or
        surmiran_display like '%%' or
		surmiran_search like '%%' or
        puter_display like '%%' or
		puter_search like '%%' or
        vallader_display like '%%' or
		vallader_search like '%%' or
		german_display like '%%' or
		german_search like '%%' or
		english_display like '%%' or
		english_search like '%%' or
		italian_display like '%%' or
		italian_search like '%%' or
		french_display like '%%' or
		french_search like '%%' or
		conjugation like '%%' or
		lexical_class_d like '%%' or
        lexical_class_r like '%%';
/*
update alllanguages
set grischun_display = REPLACE(grischun_display, '%\uc285%', ''),
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
where 	grischun_display like '%%' or
		grischun_search like '%%' or
        sursilvan_display like '%%' or
		sursilvan_search like '%%' or
        sutsilvan_display like '%%' or
		sutsilvan_search like '%%' or
        surmiran_display like '%%' or
		surmiran_search like '%%' or
        puter_display like '%%' or
		puter_search like '%%' or
        vallader_display like '%%' or
		vallader_search like '%%' or
		german_display like '%%' or
		german_search like '%%' or
		english_display like '%%' or
		english_search like '%%' or
		italian_display like '%%' or
		italian_search like '%%' or
		french_display like '%%' or
		french_search like '%%' or
		conjugation like '%%' or
		lexical_class_d like '%%' or
        lexical_class_r like '%%';
*/

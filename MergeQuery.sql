select	germantable.A2 as Grischun, 
			germantable.B2 as German, 
			italiantable.B2 as Italian, 
			frenchtable.B2 as French, 
			englishtable.B2 as English, 
			germantable.D2 as Sursilvan, 
			germantable.E2 as Sutsilvan, 
			germantable.F2 as Surmiran, 
			germantable.G2 as Puter, 
			germantable.H2 as Vallader,
            germantable.J4 as conjugation
from meinpledari germantable
left outer join miopledari italiantable on 
	germantable.A2 = italiantable.A2 and 
    germantable.A3 = italiantable.A3 and 
    germantable.D2 = italiantable.D2 and
    germantable.E2 = italiantable.E2 and
    germantable.F2 = italiantable.F2 and
    germantable.G2 = italiantable.G2 and
    germantable.H2 = italiantable.H2 and
    germantable.J4 = italiantable.J4
left outer join monpledari frenchtable on 
	germantable.A2 = frenchtable.A2 and 
    germantable.A3 = frenchtable.A3 and 
    germantable.D2 = frenchtable.D2 and
    germantable.E2 = frenchtable.E2 and
    germantable.F2 = frenchtable.F2 and
    germantable.G2 = frenchtable.G2 and
    germantable.H2 = frenchtable.H2 and
    germantable.J4 = frenchtable.J4
left outer join mypledari englishtable on 
	germantable.A2 = englishtable.A2 and 
    germantable.A3 = englishtable.A3 and 
    germantable.D2 = englishtable.D2 and
    germantable.E2 = englishtable.E2 and
    germantable.F2 = englishtable.F2 and
    germantable.G2 = englishtable.G2 and
    germantable.H2 = englishtable.H2 and
    germantable.J4 = englishtable.J4
    
union

select	germantable.A2 as Grischun, 
			germantable.B2 as German, 
			italiantable.B2 as Italian, 
			frenchtable.B2 as French, 
			englishtable.B2 as English, 
			germantable.D2 as Sursilvan, 
			germantable.E2 as Sutsilvan, 
			germantable.F2 as Surmiran, 
			germantable.G2 as Puter, 
			germantable.H2 as Vallader,
            germantable.J4 as conjugation
from miopledari italiantable
left outer join meinpledari germantable on 
	germantable.A2 = italiantable.A2 and 
    germantable.A3 = italiantable.A3 and 
    germantable.D2 = italiantable.D2 and
    germantable.E2 = italiantable.E2 and
    germantable.F2 = italiantable.F2 and
    germantable.G2 = italiantable.G2 and
    germantable.H2 = italiantable.H2 and
    germantable.J4 = italiantable.J4
left outer join monpledari frenchtable on 
	italiantable.A2 = frenchtable.A2 and 
    italiantable.A3 = frenchtable.A3 and 
    italiantable.D2 = frenchtable.D2 and
    italiantable.E2 = frenchtable.E2 and
    italiantable.F2 = frenchtable.F2 and
    italiantable.G2 = frenchtable.G2 and
    italiantable.H2 = frenchtable.H2 and
    italiantable.J4 = frenchtable.J4
left outer join mypledari englishtable on 
	italiantable.A2 = englishtable.A2 and 
    italiantable.A3 = englishtable.A3 and 
    italiantable.D2 = englishtable.D2 and
    italiantable.E2 = englishtable.E2 and
    italiantable.F2 = englishtable.F2 and
    italiantable.G2 = englishtable.G2 and
    italiantable.H2 = englishtable.H2 and
    italiantable.J4 = englishtable.J4
    
where germantable.nr is NULL

union

select	germantable.A2 as Grischun, 
			germantable.B2 as German, 
			italiantable.B2 as Italian, 
			frenchtable.B2 as French, 
			englishtable.B2 as English, 
			germantable.D2 as Sursilvan, 
			germantable.E2 as Sutsilvan, 
			germantable.F2 as Surmiran, 
			germantable.G2 as Puter, 
			germantable.H2 as Vallader,
            germantable.J4 as conjugation
from monpledari frenchtable 
left outer join miopledari italiantable on 
	italiantable.A2 = frenchtable.A2 and 
    italiantable.A3 = frenchtable.A3 and 
    italiantable.D2 = frenchtable.D2 and
    italiantable.E2 = frenchtable.E2 and
    italiantable.F2 = frenchtable.F2 and
    italiantable.G2 = frenchtable.G2 and
    italiantable.H2 = frenchtable.H2 and
    italiantable.J4 = frenchtable.J4
left outer join meinpledari germantable on 
	germantable.A2 = frenchtable.A2 and 
    germantable.A3 = frenchtable.A3 and 
    germantable.D2 = frenchtable.D2 and
    germantable.E2 = frenchtable.E2 and
    germantable.F2 = frenchtable.F2 and
    germantable.G2 = frenchtable.G2 and
    germantable.H2 = frenchtable.H2 and
    germantable.J4 = frenchtable.J4

left outer join mypledari englishtable on 
	frenchtable.A2 = englishtable.A2 and 
    frenchtable.A3 = englishtable.A3 and 
    frenchtable.D2 = englishtable.D2 and
    frenchtable.E2 = englishtable.E2 and
    frenchtable.F2 = englishtable.F2 and
    frenchtable.G2 = englishtable.G2 and
    frenchtable.H2 = englishtable.H2 and
    frenchtable.J4 = englishtable.J4
    
where germantable.nr is NULL and italiantable.nr is NULL

union

select	germantable.A2 as Grischun, 
			germantable.B2 as German, 
			italiantable.B2 as Italian, 
			frenchtable.B2 as French, 
			englishtable.B2 as English, 
			germantable.D2 as Sursilvan, 
			germantable.E2 as Sutsilvan, 
			germantable.F2 as Surmiran, 
			germantable.G2 as Puter, 
			germantable.H2 as Vallader,
            germantable.J4 as conjugation
from mypledari englishtable 

left outer join monpledari frenchtable on 
	frenchtable.A2 = englishtable.A2 and 
    frenchtable.A3 = englishtable.A3 and 
    frenchtable.D2 = englishtable.D2 and
    frenchtable.E2 = englishtable.E2 and
    frenchtable.F2 = englishtable.F2 and
    frenchtable.G2 = englishtable.G2 and
    frenchtable.H2 = englishtable.H2 and
    frenchtable.J4 = englishtable.J4
left outer join miopledari italiantable on 
	italiantable.A2 = englishtable.A2 and 
    italiantable.A3 = englishtable.A3 and 
    italiantable.D2 = englishtable.D2 and
    italiantable.E2 = englishtable.E2 and
    italiantable.F2 = englishtable.F2 and
    italiantable.G2 = englishtable.G2 and
    italiantable.H2 = englishtable.H2 and
    italiantable.J4 = englishtable.J4
left outer join meinpledari germantable on 
	germantable.A2 = englishtable.A2 and 
    germantable.A3 = englishtable.A3 and 
    germantable.D2 = englishtable.D2 and
    germantable.E2 = englishtable.E2 and
    germantable.F2 = englishtable.F2 and
    germantable.G2 = englishtable.G2 and
    germantable.H2 = englishtable.H2 and
    germantable.J4 = englishtable.J4

where germantable.nr is NULL and italiantable.nr is NULL and frenchtable.nr is null
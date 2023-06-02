--Szúrj be a település táblába egy tetszőleges települést (nincs auto_increment).
insert into telepules VALUES((SELECT max(t.id+1) from telepules t), "M7", "Pornóapáti", "")

--Írja ki a Barcs nevű településsel azonos határon lévő településeket. Barcsot ne írja ki!
SELECT DISTINCT t.nev
FROM telepules t
WHERE t.hatar = (SELECT DISTINCT t.hatar
                 FROM telepules t
                 WHERE t.nev = "Barcs") AND t.nev <> "Barcs"
				 
--Írjuk ki azokat a településeket, amiknek az épülő részének hossza az M87-es autópálya és az M51-es autópálya jelenlegi hossza közé eső autópályán helyezkednek el.
SELECT DISTINCT t.nev
FROM telepules t, palya p
WHERE t.ut = p.ut and p.epul BETWEEN  (SELECT p.kesz
					   FROM palya p
					   WHERE p.ut = "M87") and
					  (SELECT p.kesz
					   FROM palya p
					   WHERE p.ut = "M51")

--Milyen települések vannak azokon az utakon, ahol van olyan európai út, ami több mint 3 utat keresztez?
SELECT distinct t.nev
FROM telepules t
WHERE t.ut in (SELECT e.ut
			   FROM europa e
			   group by e.eurout
			   having count(e.ut) > 3)
													  
--Írasd ki az összes olyan település nevét, amelyekhez nincs rögzítve befejeződött útszakasz!
SELECT DISTINCT t.nev
FROM telepules t
WHERE t.nev not in (SELECT t.nev
						  FROM telepules t, vege v
						  WHERE t.id=v.telepid)

--Melyek azok az utak, amelyeknek a kész és épülő hossza egybevéve nagyobb, mint az összes út tervezett hossza?
SELECT p.ut
from palya p
group by p.ut
having sum(p.kesz+p.epul) > all(select p.terv
									   from palya p)
									   
--Melyek azok a 3-as számot tartalmazó utak, amelyekre bármely olyan útnál hosszabb utat terveznek, mint amelyek nem tartalmaznak 3-as számot?
SELECT p.ut
FROM palya p
WHERE p.ut like "%3%" and p.terv > any(SELECT p.terv
									   FROM palya p
									   WHERE p.ut not like "%3%")
									   
--Határozd meg, hogy melyik városon halad át a legtöbb európai út, ha több ilyen is van, akkor mindegyiket jelenítsd meg, az allekérdezést mint tábla használd fel!
select t.nev, count(e.eurout) as europaiutakszama
from (telepules t inner join palya p on t.ut = p.ut) inner join europa e on p.ut = e.ut,
	(select t.nev, count(e.eurout) as europaiutak
	from (telepules t inner join palya p on t.ut = p.ut) inner join europa e on p.ut = e.ut
	GROUP by t.nev
	order by count(e.eurout) desc
	limit 1) maxszam
GROUP by t.nev
having count(e.eurout) = max(maxszam.europaiutak)

--Írjuk ki azokon az utakon lévő településeket és a hozzájuk tartozó jelenlegi hosszukat, amelyik utak neve 0-ra végződik.
SELECT t.nev, sum(p.kesz)
from telepules t inner join palya p on t.ut=p.ut
WHERE p.ut like "%0"
group by t.nev

--Írjuk ki azoknak azokat a településeket, amikhez tartozó utak jelenlegi hosszának összege nagyobb mint 300.
SELECT t.nev
FROM telepules t INNER JOIN palya p ON t.ut = p.ut
GROUP BY t.nev
HAVING sum(p.kesz) > 300

--Írjuk ki az összes települést és azt hogy a hozzájuk tartozó utat mennyi európai út keresztezi.
SELECT t.nev, count(e.eurout)
FROM telepules t
	left join palya p on t.ut=p.ut
	left join europa e on p.ut=e.ut
group by t.nev

--Írjuk ki azokat a településeket amik az M0-s autópályán helyezkednek el és azokat az európai utakat amik keresztezik az M0-s autópályát.
SELECT t.nev
from telepules t left join palya p on t.ut=p.ut
WHERE p.ut = "M0"
union
SELECT e.eurout
from europa e left join palya p on e.ut=p.ut left join telepules t on t.ut=p.ut
WHERE p.ut = "M0"
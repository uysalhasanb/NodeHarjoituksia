-- Vuoden, kuukauden ja edellisen kuukauden erottaminen
--kuluvan ajanhetken aikaleimasta
select extract(year from now()) as vuosi,
 extract(month from now()) as kuukausi,
 extract(month from now())-1 as edellinen_kuukausi;
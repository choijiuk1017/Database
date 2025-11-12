use nation

--select * from regions;
--select * from country_stats;
--select * from country_languages;

/*select c.name from countries c 
join regions r on c.region_id = r.region_id 
where area > 2000000 and c.region_id = 2;*/

--select name from countries where country_code2 in ('US','FR','JP');

/*select c.name, max(cs.gdp) from countries c 
left outer join country_stats cs on c.country_id = cs.country_id
group by c.name;*/

/*select c.name from countries c 
left join country_stats cs on c.country_id = cs.country_id
group by c.country_id
having sum(cs.gdp) is NULL;*/

/*select r.name, count(c.country_id) from countries c 
join regions r on c.region_id = r.region_id
where c.region_id in (select region_id from countries) group by r.name;*/

--select region_id, avg(area) from countries group by region_id;

/*select r.name , count(c.country_id), sum(c.area) from regions r join countries c on r.region_id = c.region_id 
group by r.name 
having count(c.country_id) >= 10 and sum(c.area) > 1000000;*/

/*select c.name from countries c
join country_stats s on c.country_id = s.country_id
where s.year = 2018 and s.population > (select avg(population) from country_stats where year = 2018)
and s.gdp > (select avg(gdp) from country_stats where year = 2018)
group by c.name
order by c.name;*/

/*select L.language ,sum(c.area) from country_languages cl 
join Countries c on cl.country_id = c.country_id
join languages L on cl.language_id =L.language_id
where cl.official = 1
group by L.language;*/

/*select c.name, max(s.gdp)/min(s.gdp) from countries c join country_stats s on 
c.country_id = s.country_id
group by c.country_id
having max(s.gdp) >= min(s.gdp) * 5;*/

/*select c.name from countries c
join country_stats cp on cp.country_id = c.country_id
join country_stats cn on cn.country_id = c.country_id
where cn.year = cp.year + 1 and cn.gdp < cp.gdp
group by c.country_id
having count(*) <= 2;*/



/*select co.name, (sum(s98.gdp) - sum(s97.gdp))/sum(s97.gdp) * 100
from countries c join regions r on c.region_id = r.region_id 
join continents co on r.continent_id = co.continent_id
join country_stats s98 on s98.country_id = c.country_id
join country_stats s97 on s97.country_id = c.country_id
where s98.year = 1998 and s97.year = 1997
group by co.name;*/
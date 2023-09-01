select name, duration_sec
from Songs
where duration_sec = (select MAX(duration_sec) from Songs);

select name
from Songs
where duration_sec >= 210;

select name
from Collection
where year_of_release between '2017-12-31' and '2020-12-31';

select name
from Musician
where not(substring(name, position(' ' in name), 1)=' ');

select name
from Songs
where name like '%My%' or name like '%Мой%';

select name, COUNT(mg.genre_id) from Genre G
left join MusiciansGenres mg on G.id = mg.genre_id
group by name;


select a.name, count(s.id) from Album a
left join Songs s on s.album_id = a.id 
where a.year_of_release between '2019-12-31' and '2020-12-31'
group by a.name;

select a.name, AVG(s.duration_sec) from Album a
left join Songs s on s.album_id = a.id 
group by a.name
order by AVG(s.duration_sec) desc;

select m.name from Musician m 
where m.name not in (
	select m.name from Musician m
	join AlbumMusician am on am.musician_id = m.id
	join Album a on a.id = am.album_id
	where a.year_of_release between '2019-12-31' and '2020-12-31');
	
select c.name from Collection c
join SongsOfCollection sc on sc.collection_id = c.id
join Songs s on s.id = sc.song_id 
join AlbumMusician am on am.album_id  = s.album_id
join Musician m on m.id = am.musician_id 
where m.name = 'Eminem'
group by c.name;
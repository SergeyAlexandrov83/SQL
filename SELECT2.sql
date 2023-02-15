-- ЗАДАНИЕ 1: КОЛИЧЕСТВО ИСПОЛНИТЕЛЕЙ В КАЖДОМ ЖАНРЕ;
select
	genre."name",
	count(*)
from
	artist
join genre_artist on
	artist.artist_id = genre_artist.artist_id
join genre on
	genre_artist.genre_id = genre.genre_id
group by
	genre."name";

-- ЗАДАНИЕ 2: КОЛИЧЕСТВО ТРЕКОВ, ВОШЕДШИХ В АЛЬБОМЫ 2019-2020 ГОДОВ;
select
	count(*)
from
	track
join album on
	track.album_id = album.album_id
where
	year between 2019 and 2020;

-- ЗАДАНИЕ 3: СРЕДНЯЯ ПРОДОЛЖИТЕЛЬНОСТЬ ТРЕКОВ ПО КАЖДОМУ АЛЬБОМУ;
select
	album."name",
	avg(lenght)
from
	track
join album on
	track.album_id = album.album_id
group by
	album."name";

-- ЗАДАНИЕ 4: ВСЕ ИСПОЛНИТЕЛИ, КОТОРЫЕ НЕ ВЫПУСТИЛИ АЛЬБОМЫ В 2020 ГОДУ;
select 
	artist."name" 
from
	artist
join artist_album on 
	artist.artist_id = artist_album.artist_id 
join album on 
	artist_album.artist_album_id = album.album_id 
where 
	year != 2020;

-- ЗАДАНИЕ 5: НАЗВАНИЯ СБОРНИКОВ, В КОТОРЫХ ПРИСУТСТВУЕТ КОНКРЕТНЫЙ ИСПОЛНИТЕЛЬ (ВЫБЕРИТЕ САМИ);
select 
	compilation."name" 
from
	compilation
join
	compilation_track on 
	compilation.compilation_id = compilation_track.compilation_track_id 
join 
	track on
	compilation_track.track_id = track.track_id 
join 
	album on
	track.album_id = album.album_id 
join 
	artist_album on
	album.album_id = artist_album.album_id 
join 
	artist on
	artist_album.artist_id = artist.artist_id 
where 
	artist.artist_id = 2

-- ЗАДАНИЕ 6: НАЗВАНИЕ АЛЬБОМОВ, В КОТОРЫХ ПРИСУТСТВУЮТ ИСПОЛНИТЕЛИ БОЛЕЕ 1 ЖАНРА;
select 
	album."name"
from
	album
join artist_album on
	album.album_id = artist_album.album_id
join artist on
	artist_album.artist_id = artist.artist_id
join genre_artist on 
	artist.artist_id = genre_artist.artist_id
join genre on
	genre_artist.genre_id = genre.genre_id
group by
	album."name"
having 
	count(distinct genre."name") > 1;

-- ЗАДАНИЕ 7: НАИМЕНОВАНИЕ ТРЕКОВ, КОТОРЫЕ НЕ ВХОДЯТ В СБОРНИКИ;
select
	track."name"
from
	track
left join compilation_track on
	track.track_id = compilation_track.track_id
where
	compilation_track.track_id is null;

-- ЗАДАНИЕ 8: ИСПОЛНИТЕЛЯ(-ЕЙ), НАПИСАВШЕГО САМЫЙ КОРОТКИЙ ПО ПРОДОЛЖИТЕЛЬНОСТИ ТРЕК;
select
	artist."name"
from
	artist
join artist_album on
	artist.artist_id = artist_album.artist_id
join album on
	artist_album.album_id = album.album_id
join track on
	album.album_id = track.album_id
where
	lenght = (
	select
		min(lenght)
	from
		track);

-- ЗАДАНИЕ 9: НАЗВАНИЕ АЛЬБОМОВ, СОДЕРЖАЩИХ НАИМЕНЬШЕЕ КОЛИЧЕСТВО ТРЕКОВ;
select
	album."name"
from
	album
join track on
	album.album_id = track.album_id
group by
	album."name"
having
	count(*) = (
	select
		count(album_id)
	from
		track
	group by
		album_id
	order by
		album_id desc
	limit 1)

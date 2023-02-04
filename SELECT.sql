select "name", "year" from album 
where "year" = 2019

select "name", "lenght" from track
where lenght = (select max(lenght) from track)

select "name" from track
where lenght >= 210

select "name" from compilation 
where "year" between 2018 and 2020

select "name" from artist 
where  "name" not like '% %'

select "name" from track 
where "name" like '%Unforgiven%'
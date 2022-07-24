select mg.name genre, COUNT(*) artists_num
from musical_genres_artists mga
	join musical_genres mg on mga.musical_genre_id = mg.id
	group by mg.name;

select a.album_release_year, t.name track, COUNT(*) count_of_tracks
from tracks t
	join albums a on a.id = t.album_id
	where a.album_release_year between 2019 and 2020
	group by a.album_release_year, t.name;

select a.name album, AVG(t.duration) track_duration_mean
from tracks t
	right join albums a on a.id = t.album_id
	group by a.name;

select name artist from artists 
where name != (select ar.name from artists ar
	full join artists_albums aa on ar.id = aa.artist_id 
	full join albums al on al.id = aa.album_id
	where al.album_release_year = 2020);


select d.name digest, ar.name artist, t.name track 
from digests d 
	join digests_tracks dt  on d.id = dt.digest_id  
	join tracks t on t.id = dt.track_id
	join albums al on al.id=t.album_id 
	join artists_albums aa on al.id=aa.album_id 
	join artists ar on ar.id=aa.artist_id
	where ar.name like ('The Killers');

select al.name album, ar.name artist, count(mg.name) number_of_genres 
from musical_genres mg 
	join musical_genres_artists mga on mg.id = mga.musical_genre_id 
	join artists ar on ar.id = mga.artist_id 
	join artists_albums aa on ar.id=aa.artist_id  
	join albums al on al.id=aa.album_id
	group by al.name, ar.name
	having count(mg.name)>1;

select t.name traks  
from tracks t 
	left join digests_tracks dt on t.id = dt.track_id  
	left join digests d on d.id = dt.digest_id 
	where d.name is null; 

select ar.name artist, min(t.duration) track_min_duration 
from artists ar 
	join artists_albums aa on ar.id = aa.artist_id  
	join albums al on al.id = aa.album_id  
	join tracks t on al.id=t.album_id  
	group by ar.name
	having min(t.duration) = (select min(duration) from tracks);

select al.name album, count(t.album_id) track_num 
from albums al
	full join tracks t on al.id = t.album_id 
	group by al.name
	having count(t.album_id) = (
		select count(t.album_id) track_num 
		from albums al
			full join tracks t on al.id = t.album_id 
			group by al.name
			order by count(t.album_id)
			limit 1);
	  

	  									








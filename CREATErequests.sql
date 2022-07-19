CREATE DATABASE music_service

CREATE TABLE musical_genres (id SERIAL PRIMARY KEY, 
							 name VARCHAR(30) NOT NULL UNIQUE);
							
CREATE TABLE artists (id SERIAL PRIMARY KEY, 
					  name VARCHAR(30) NOT NULL);
					 
CREATE TABLE musical_genres_artists (FOREIGN KEY (musical_genre_id) REFERENCES musical_genres(id), 
									 FOREIGN KEY (artist_id) REFERENCES artists(id), 
									 PRIMARY KEY (musical_genre_id, artist_id));
									
CREATE TABLE albums (id SERIAL PRIMARY KEY, 
					 name VARCHAR(30) NOT NULL, 
					 album_release_year INT NOT NULL, 
					 CHECK (album_release_year > 1900));
					
CREATE TABLE artists_albums (FOREIGN KEY (artist_id) REFERENCES artists(id), 
							 FOREIGN KEY (album_id) REFERENCES albums(id), 
							 PRIMARY KEY(artist_id, album_id));
							
CREATE TABLE tracks (id SERIAL PRIMARY KEY, 
					 name VARCHAR(30) NOT NULL, 
					 duration INT NOT NULL,
					 FOREIGN KEY (album_id) REFERENCES albums(id),
					 CHECK (duration < 1800));
					
CREATE TABLE digests (id SERIAL PRIMARY KEY, 
					  name VARCHAR(30) NOT NULL, 
					  digest_realease_year INT NOT NULL,
					  CHECK (digest_release_year > 1900));
					 
CREATE TABLE digests_tracks (FOREIGN KEY (track_id) REFERENCES tracks(id), 
							 FOREIGN KEY (digest_id) REFERENCES digests(id), 
							 PRIMARY KEY (track_id, digest_id));





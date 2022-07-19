insert into musical_genres (id, name)
values 
(1, 'rock'),
(2, 'techno'),
(3, 'indi'),
(4, 'jazz'),
(5, 'etno'),
(6, 'metal'), 
(7, 'pop');

insert into artists (id, name)
values 
(1, 'Led Zeppelin'),
(2, 'Queen'),
(3, 'The Killers'),
(4, 'Radiohead'),
(5, 'Cristina Agillera'),
(6, 'Madonna'),
(7, 'Lady Gaga'),
(8, 'Beyonce'),
(9, 'Daft Punk'),
(10, 'M83'),
(11, 'The Kooks'),
(12, 'Frank Sinatra'),
(13, 'Igor Butman'),
(14, 'Namgar'),
(15, 'Dacha Bracha'),
(16, 'Shono'),
(17, 'Linkin Park'),
(18, 'Black Sabbath');

insert into musical_genres_artists (musical_genre_id, artist_id)
values
(1, 1),
(1, 2), 
(2, 9), 
(2, 10),
(3, 3),
(3, 4),
(3, 11),
(4, 12),
(4, 13),
(4, 7),
(5, 14),
(5, 15),
(5, 16),
(6, 18),
(6, 17),
(7, 5),
(7, 6),
(7, 7),
(7, 8);

insert into albums (id, name , album_release_year)
values
(1, 'Spaceman', 2009), 
(2, 'Direct Hits', 2013),
(3, 'Wonderful Wonderful', 2017),
(4, 'Led Zeppelin III', 1970),
(5, 'Live at Wembley Stadium', 1986),
(6, 'Pablo Honey', 1993),
(7, 'OK Computer', 1997),
(8, 'Libertion', 2018),
(9, 'Accelerate', 2018),
(10,'Ray of light', 1998),
(11,'A star is born soundtracks', 2018),
(12,'Born this way', 2011),
(13,'Lemonade', 2016),
(14,'One more time', 2000),
(15,'Nayan Navaa', 2021),
(16,'Alambari', 2020);

insert into artists_albums (artist_id, album_id)
values 
(1, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(4, 6),
(4, 7),
(5, 8),
(5, 9),
(6, 10),
(7, 11),
(7, 12),
(8, 13),
(9, 14),
(15, 16),
(14, 15);


insert into tracks ( name , duration, album_id)
values
('Nayan Navaa', 267, 15),
('Dostochka', 450, 16),
('Pray You Catch Me', 196, 13),
('Formation', 206, 13),
('You and I', 307, 12),
('Born this way', 260, 12),
('Shallow', 216, 11),
('Always remember us this way', 210, 11),
('Karma Police', 264, 7),
('No Surprises', 229, 7),
('Creep', 237, 6 ),
('Under Pressure', 221, 5),
('One Vision', 349, 5),
('Immigrant Song', 147, 4),
('Since Ive been Loving You', 444, 4),
('Run for Cover', 222, 3),
('The Man', 250, 3),
('Mr.BrightSide', 223, 2),
('Somebody Told Me', 197, 2),
('Human', 245, 2),
('Four Winds', 235, 1)
('When I walk on the Mountain', 296, 15),
('My life', 119, 9),
('Мой май' 200, 9);

insert into digests (name, digest_realease_year)
values 
('Ethnobit', 2020),
('Best Pop Hits', 2016),
('Soundtracks', 2018),
('Gold Collection', 2000),
('Feelings', 2022),
('Blue', 2019),
('New Wave 2015', 2015),
('Fancy music', 2014);

insert into digests_tracks (digest_id, track_id)
values
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 22),
(3, 23),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(5, 4),
(5, 5),
(5, 8),
(5, 7),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 18),
(6, 13),
(6, 14),
(6, 15),
(7, 22),
(7, 24),
(7, 23),
(7, 25),
(8, 6);


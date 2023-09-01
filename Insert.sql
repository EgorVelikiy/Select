insert into Genre (name)
values ('rap'), ('rock '), ('jazz');

insert into Musician (id, name)
values (1, 'Eminem'), (2, '2Pac'), (3, 'Linkin Park'), (4, 'AC/DC'), (5, 'Ray Charles');

insert into Album (name, year_of_release) values
('The Eminem Show', '2022-05-26'),
('Greatest Hits', '1998-01-01'),
('Meteora', '2003-03-23'),
('Back in Black', '1980-07-22'),
('Anthology', '1988-10-25');

insert into Album (name, year_of_release) values
('Music to Be Murdered By', '2020-01-16')

insert into Songs (id, name, duration_sec, album_id) values
(1, 'White America', 324, 1),
(2, 'Cleanin Out My Closet', 276, 1),
(3, 'So Many Tears', 329, 2),
(4, 'Numb', 185, 3),
(5, 'Let Me Put My Love Into You', 238, 4),
(6, 'Busted', 130, 5)
(7, 'Cry', 209, 5),
(8, 'Back in Black', 241, 4)

insert into Songs (id, name, duration_sec, album_id) values
(9, 'Godzilla', 210, 6)

insert into Collection (name, year_of_release) values
('collection_1', '2019-04-15'),
('collection_2', '2014-08-22'),
('collection_3', '2022-10-02'),
('collection_4', '2020-01-19');

insert into MusiciansGenres (genre_id, musician_id) values
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5);

insert into AlbumMusician (musician_id, album_id) values
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

insert into AlbumMusician (musician_id, album_id) values
(1, 6)

insert into SongsOfCollection (song_id, collection_id) values
(1, 1), (2, 1), (4, 1), 
(3, 2), (5, 2), (8, 2), 
(6, 3), (7, 3), (1, 3),
(2, 4), (3, 4), (4, 4);

insert into SongsOfCollection (song_id, collection_id) values
(9, 1), (9, 3)
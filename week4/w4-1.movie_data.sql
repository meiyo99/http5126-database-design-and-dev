-- CREATE DATABASE
DROP DATABASE IF EXISTS week_4_movie_data;

CREATE DATABASE week_4_movie_data;
USE week_4_movie_data;

-- CREATE TABLE
CREATE TABLE movie (
  movie_id INT AUTO_INCREMENT,
  title VARCHAR(100),
  runtime INT,
  genre VARCHAR(100),
  release_date DATE,
  PRIMARY KEY (movie_id)
);

-- INSERT data
INSERT INTO movie (title, runtime, genre, release_date)
  VALUES ('The Banshees of Inisherin', 109, 'Drama', '2022-10-21'),
  ('The Truman Show', 107, 'Drama', '1998-06-05'),
  ('The Grand Budapest Hotel', 99, 'Comedy', '2014-03-14'),
  ('The Dark Knight', 152, 'Action', '2008-07-18'),
  ('O Brother, Where Art Thou?', 107, 'Adventure', '2000-08-30'),
  ('Moana 2', 152, 'Animation', '2024-11-27'),
  ('Get Away', 104, 'Horror', '2024-12-06'),
  ('The Lord of the Rings: The War of the Rohirrim', 123, 'Animation', '2024-12-13'),
  ('Sonic the Hedgehog 3', 102, 'Animation', '2024-12-20'),
  ('Nosferatu', 99, 'Horror', '2024-12-25'),
  ('Captain America: Brave New World', 108, 'Action', '2025-02-14'),
  ('Wicked', 160, 'Musical', '2024-11-22'),
  ('Civil War', 109, 'Drama', '2024-04-12');

INSERT INTO movie (title, genre)
  VALUES ('Incredibles 3', 'Animation');

INSERT INTO movie (title, runtime, genre, release_date)
  VALUES ('Airplane!', 88, 'Comedy', '1980-07-02'),
  ('Spider-Man: No Way Home', 148, 'Action, Adventure, Fantasy', '2021-12-17'),
  ('The Babysitter', 85, 'Comedy, Horror', '2017-10-13'),
  ('Paddington in Peru', 134, 'Comedy', '2025-01-17'),
  ('Seven Psychopaths', 110, 'Comedy, Crime', '2012-10-12'),
  ('Monty Python and the Holy Grail', 91, 'Adventure, Comedy, Fantasy', '1975-04-09'),
  ('Joseph and the Amazing Technicolor Dreamcoat', 76, 'Musical', '1999-04-05'),
  ('Palm Springs', 90, 'Comedy, Fantasy, Mystery', '2020-07-10'),
  ('I Know What You Did Last Summer', 101, 'Horror, Mystery', '1997-10-17'),
  ('Accepted', 93, 'Comedy', '2006-08-18'),
  ('Uncut Gems', 135, 'Crime, Drama, Thriller', '2019-12-13'),
  ('Bring It On', 98, 'Comedy, Romance, Sport', '2000-08-25'),
  ('Stick It', 103, 'Comedy, Drama, Sport', '2006-04-28'),
  ('Sweeney Todd: The Demon Barber of Fleet Street', 116, 'Drama, Horror, Musical', '2007-12-21'),
  ('Burn After Reading', 96, 'Comedy, Crime, Drama', '2008-09-12'),
  ('Hairspray', 117, 'Comedy, Drama, Musical', '2007-07-20'),
  ('Doctor Strange in the Multiverse of Madness', 126, 'Action, Adventure, Fantasy', '2022-05-06'),
  ('Scary Movie', 88, 'Comedy', '2000-07-07'),
  ('Roller Town', 80, 'Comedy', '2011-09-01'),
  ('Guns Akimbo', 98, 'Action, Comedy, Crime', '2019-09-19'),
  ('Tower of Terror', 89, 'Horror, Thriller, Comedy', '1997-10-26'),
  ('Ella Enchanted', 96, 'Comedy, Family, Fantasy', '2004-04-09'),
  ('Thor: Love and Thunder', 118, 'Action, Adventure, Comedy', '2022-07-08'),
  ('I Still Know What You Did Last Summer', 100, 'Horror, Mystery, Thriller', '1998-11-13'),
  ('Mr. Right', 95, 'Action, Comedy, Romance', '2015-09-19'),
  ('Rubber', 82, 'Comedy, Fantasy, Horror', '2010-05-15'),
  ('The Room', 99, 'Drama', '2003-06-27'),
  ('Sharks of the Corn', 105, 'Horror', '2021-03-25'),
  ('The Perfection', 90, 'Drama, Horror, Music', '2018-09-20'),
  ('Hocus Pocus', 96, 'Comedy, Family, Fantasy', '1993-07-16'),
  ('Halloweentown', 84, 'Adventure, Comedy, Family', '1998-10-17'),
  ('100 Year Old Man Who Climbed Out The Window and Disappeared', 114, 'Adventure, Comedy', '2013-12-25'),
  ('The Spongebob Squarepants Movie', 87, 'Animation, Adventure, Comedy', '2004-11-19'),
  ('Tick, Tick... Boom!', 120, 'Biography, Comedy, Drama', '2021-11-12'),
  ('Straight Up', 95, 'Comedy, Romance', '2019-04-30'),
  ('Night at the Museum', 108, 'Adventure, Comedy, Family', '2006-12-22'),
  ('Godspell', 103, 'Comedy, Drama, Musical', '1973-03-21'),
  ('Love Actually', 135, 'Comedy, Drama, Romance', '2003-11-14'),
  ('The Proposal', 108, 'Comedy, Drama, Romance', '2009-06-19'),
  ('Die Hard', 132, 'Action, Thriller', '1988-07-15'),
  ('Seeking a Friend for the End of the World', 101, 'Adventure, Comedy, Drama', '2012-06-22'),
  ('10 Things I Hate About You', 97, 'Comedy, Drama, Romance', '1999-03-31'),
  ('Meet the Parents', 108, 'Comedy, Romance', '2000-10-06'),
  ('Scott Pilgrim vs. The World', 112, 'Action, Comedy, Fantasy', '2010-08-13'),
  ('A Futile and Stupid Gesture', 101, 'Biography, Comedy', '2018-01-24'),
  ('In the Heights', 143, 'Drama, Musical, Romance', '2021-06-11'),
  ('Green Book', 130, 'Biography, Comedy, Drama', '2018-11-16'),
  ('Moneyball', 133, 'Biography, Drama, Sport', '2011-09-23'),
  ('The Benchwarmers', 85, 'Comedy, Sport', '2006-04-07'),
  ('Pitch Perfect', 112, 'Comedy, Music, Romance', '2012-09-28'),
  ('Zootopia', 108, 'Animation, Adventure, Comedy', '2016-03-04'),
  ('Lady Bird', 94, 'Comedy, Drama', '2017-11-03'),
  ('Booksmart', 102, 'Comedy', '2019-05-24'),
  ('A Quiet Place', 90, 'Drama, Horror, Sci-Fi', '2018-04-06'),
  ('Napoleon Dynamite', 96, 'Comedy', '2004-06-11'),
  ('Her', 126, 'Drama, Romance, Sci-Fi', '2013-12-18'),
  ('Rocketman', 121, 'Biography, Drama, Music', '2019-05-31'),
  ('Spider-Man: Across the Spider-Verse Pt 1', 140, 'Animation, Action, Adventure', '2023-06-02'),
  ('Inside Llewyn Davis', 104, 'Drama, Music', '2013-12-06'),
  ('Guardians of the Galaxy', 121, 'Action, Adventure, Comedy', '2014-08-01'),
  ('Promising Young Woman', 113, 'Crime, Drama, Mystery', '2020-12-25'),
  ('Ruby Sparks', 104, 'Comedy, Drama, Fantasy', '2012-07-25'),
  ('Anchorman', 94, 'Comedy', '2004-07-09'),
  ('Frances Ha', 86, 'Comedy, Drama, Romance', '2012-09-01'),
  ('Lost in Translation', 102, 'Comedy, Drama', '2003-09-12'),
  ('Austin Powers: International Man of Mystery', 89, 'Adventure, Comedy', '1997-05-02'),
  ('Austin Powers: The Spy Who Shagged Me', 95, 'Action, Adventure, Comedy', '1999-06-11'),
  ('Austin Powers in Goldmember', 94, 'Action, Adventure, Comedy', '2002-07-26'),
  ('Mamma Mia!', 108, 'Comedy, Musical, Romance', '2008-07-18'),
  ('Whiplash', 106, 'Drama, Music', '2014-10-10'),
  ('Jurassic Park', 127, 'Action, Adventure, Sci-Fi', '1993-06-11'),
  ('Raiders of the Lost Ark', 115, 'Action, Adventure', '1981-06-12'),
  ('The Trial of the Chicago 7', 129, 'Drama, History, Thriller', '2020-09-25'),
  ('Little Miss Sunshine', 101, 'Comedy, Drama', '2006-07-26'),
  ('American Psycho', 102, 'Crime, Drama, Horror', '2000-04-14'),
  ('Little Women', 135, 'Drama, Romance', '2019-12-25'),
  ('Django Unchained', 165, 'Drama, Western', '2012-12-25'),
  ('Beetlejuice', 92, 'Comedy, Fantasy', '1988-03-30'),
  ('Zombieland', 88, 'Action, Comedy, Horror', '2009-10-02'),
  ('The Shining', 146, 'Drama, Horror', '1980-05-23'),
  ('Dead Poets Society', 128, 'Comedy, Drama', '1989-06-02'),
  ('Shiva Baby', 77, 'Comedy, Drama', '2020-09-10'),
  ('Legally Blonde', 96, 'Comedy, Romance', '2001-07-13'),
  ('The Hangover', 100, 'Comedy', '2009-06-05'),
  ('The Breakfast Club', 97, 'Comedy, Drama', '1985-02-15'),
  ('Freaky Friday', 97, 'Comedy, Family, Fantasy', '2003-08-06'),
  ('Asteroid City', 105, 'Comedy, Drama, Romance', '2023-06-23'),
  ('Dumb and Dumber', 107, 'Comedy', '1994-12-16'),
  ('Alice in Wonderland', 108, 'Adventure, Family, Fantasy', '2010-03-05'),
  ('Baby Driver', 113, 'Action, Crime, Drama', '2017-06-28'),
  ('A Haunting in Venice', 103, 'Crime, Drama, Horror', '2023-09-15'),
  ('Frankenweenie', 87, 'Animation, Comedy, Drama', '2012-10-05'),
  ('Crazy Rich Asians', 120, 'Comedy, Drama, Romance', '2018-08-15'),
  ('The Holdovers', 133, 'Comedy, Drama', '2023-11-10'),
  ('Rye Lane', 82, 'Comedy, Drama, Romance', '2023-03-31'),
  ('Inside Out', 95, 'Animation, Adventure, Comedy', '2015-06-19'),
  ('Crazy, Stupid, Love', 118, 'Romance', '2011-07-29'),
  ('The Iron Claw', 132, 'Biography, Drama, Sport', '2023-12-22'),
  ('Almost Famous', 122, 'Adventure, Comedy, Drama', '2000-09-22'),
  ('Past Lives', 105, 'Drama, Romance', '2023-06-02'),
  ('Saltburn', 131, 'Comedy, Drama, Thriller', '2023-11-17'),
  ('Anatomy of a Fall', 151, 'Crime, Drama, Thriller', '2023-10-13'),
  ('Hail, Caesar!', 100, 'Comedy, Music', '1994-02-18'),
  ('Blackberry', 120, 'Biography, Comedy, Drama', '2023-05-12'),
  ('Wedding Crashers', 119, 'Comedy, Romance', '2005-07-15'),
  ('The Super Mario Bros. Movie', 92, 'Animation, Adventure, Comedy', '2023-04-05'),
  ('Poor Things', 141, 'Comedy, Drama, Romance', '2023-09-08'),
  ('Garden State', 102, 'Comedy, Drama, Romance', '2004-07-28'),
  ('You Are So Not Invited To My Bat Mitzvah', 103, 'Comedy', '2023-08-25'),
  ('Passages', 91, 'Drama, Romance', '2023-08-04'),
  ('Holidate', 104, 'Comedy, Romance', '2020-10-28'),
  ('Killers of the Flower Moon', 206, 'Crime, Drama, History', '2023-10-20'),
  ('EXmas', 93, 'Romance', '2023-12-01'),
  ('Miracle', 135, 'Biography, Drama, History', '2004-02-06'),
  ('Self Reliance', 85, 'Comedy, Thriller', '2023-01-20'),
  ('Turning Red', 100, 'Animation, Adventure, Comedy', '2022-03-11'),
  ('Come From Away', 106, 'Comedy, Drama, Musical', '2021-09-10'),
  ('The Wrestler', 109, 'Drama, Sport', '2008-12-17'),
  ('La La Land', 128, 'Comedy, Drama, Music', '2016-12-25'),
  ('Cool Runnings', 98, 'Adventure, Comedy, Family', '1993-10-01'),
  ('The Pianist', 150, 'Biography, Drama, Music', '2002-12-04'),
  ('Office Space', 89, 'Comedy', '1999-02-19'),
  ('The Boy and the Heron', 124, 'Animation, Adventure, Drama', '2023-07-14'),
  ('How to Lose a Guy in 10 Days', 116, 'Comedy, Romance', '2003-02-07'),
  ('Manchester by the Sea', 137, 'Drama', '2016-11-18'),
  ('Anyone But You', 103, 'Comedy, Romance', '2023-12-22'),
  ('Little Shop of Horrors', 94, 'Comedy, Horror, Musical', '1986-12-19'),
  ('Lisa Frankenstein', 101, 'Comedy, Horror, Romance', '2024-02-09'),
  ('Sleepless In Seattle', 105, 'Comedy, Drama, Romance', '1993-06-25');
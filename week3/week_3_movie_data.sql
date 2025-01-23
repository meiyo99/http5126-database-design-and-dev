-- CREATE DATABASE
DROP DATABASE IF EXISTS week_3_movie_data;

CREATE DATABASE week_3_movie_data;
USE week_3_movie_data;

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
  ('Wicked', 160, 'Musical', '2025-11-22'),
  ('Civil War', 109, 'Drama', '2024-04-12');

INSERT INTO movie (title, genre)
  VALUES ('Incredibles 3', 'Animation');
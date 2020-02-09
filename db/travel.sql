DROP TABLE cities;
DROP TABLE countries;
DROP TABLE continents;


CREATE TABLE continents
(
  id SERIAL primary key,
  name VARCHAR(255) not null
);

CREATE TABLE countries
(
  id SERIAL primary key,
  continent_id INT references continents(id),
  name VARCHAR(255) not null,
  population INT,
  visited BOOLEAN,
  capital_city VARCHAR(255)
);

CREATE TABLE cities
(
  id SERIAL primary key,
  country_id INT references countries(id),
  name VARCHAR(255) not null,
  population INT,
  visited BOOLEAN,
  capital_city BOOLEAN
)

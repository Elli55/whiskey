CREATE TABLE destillerie(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    region VARCHAR(50),
    year_of_foundation INTEGER  

);

CREATE TABLE whiskey_from_book(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    destillerie_id INTEGER REFERENCEs destillerie(id),
    alcohol_percentage NUMERIC(2, 2) NOT NULL CHECK(alcohol_percentage BETWEEN 0 AND 100),
    old_years INTEGER,
    about TEXT


);

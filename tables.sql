


CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	email VARCHAR(320) UNIQUE,
	firstname TEXT,
	lastname TEXT,
	telephone INTEGER,
	password TEXT,
	gender TEXT,
	occupation TEXT,
	nationality TEXT
);


CREATE TABLE IF NOT EXISTS cars (
	id SERIAL PRIMARY KEY,
	owner_id INTEGER,
	make TEXT,
	model TEXT,
	year INTEGER,
	passengers INTEGER,
	transmission TEXT,
	fuel TEXT,
	photo TEXT,
	address TEXT,
	postcode INTEGER,
	avail_start DATE,
	avail_end DATE,
	price DECIMAL(10,2),
	comments TEXT
);


CREATE TABLE IF NOT EXISTS rental (
	id SERIAL PRIMARY KEY,
	renter_id INTEGER,
	car_id INTEGER,
	rental_start DATE,
	rental_end DATE
);



--Terminal: psql -d carly -U kencheng -f tables.sql
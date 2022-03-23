CREATE TABLE population (
	city_id SERIAL,
    city varchar(155)  NOT NULL ,
    state varchar(155) NOT NULL ,
    census int NOT NULL ,
    estimates_base int NOT NULL ,
    year_2010 INT NOT NULL ,
    year_2011 INT NOT NULL ,
    year_2012 INT NOT NULL ,
    year_2013 INT NOT NULL ,
    year_2014 INT NOT NULL ,
    year_2015 INT NOT NULL ,
    year_2016 INT NOT NULL ,
    year_2017 INT NOT NULL ,
    year_2018 INT NOT NULL ,
    year_2019 INT NOT NULL 
);

DROP TABLE avocado_data;
SELECT * FROM avocado_data;

CREATE TABLE citystate (
    id serial primary key NOT NULL ,
    city varchar(155)  NOT NULL ,
    state varchar(155)  NOT NULL 
);

CREATE TABLE avocado_data (
	id serial primary key NOT NULL,
    date date NOT NULL ,
    average_price float NOT NULL,
    total_volume float NOT NULL,
    plu_4046_volume float NOT NULL,
    plu_4225_volume float NOT NULL,
    plu_4770_volume float NOT NULL,
    type VARCHAR(155) NOT NULL,
    year INT NOT NULL,
    city VARCHAR(155) NOT NULL,
    city_id INT NOT NULL 
);

ALTER TABLE population
	ADD FOREIGN KEY(city_id) REFERENCES citystate (id)

ALTER TABLE avocado_data 
	ADD FOREIGN KEY(city_id) REFERENCES citystate (id)
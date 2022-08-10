/* Populate database with sample data. */

INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES ('Agumon','Feb 3 2020', 10.23, true, 0);
INSERT INTO animals VALUES ('Gebumom','Nov 15 2018', 8, true, 2);
INSERT INTO animals VALUES ('Pikachu','Jan 7 2021', 15.04, false, 1);
INSERT INTO animals VALUES ('Devimon','May 12 2017', 11.0, true, 5);
INSERT INTO animals  VALUES ('Charmander','Feb 8 2020', -11.0, false, 0);
INSERT INTO animals  VALUES ('Plantmon','Nov 15 2021', -5.7, true, 2);
INSERT INTO animals  VALUES ('Squirtle','Apr 2 1993', -12.13, false, 3);
INSERT INTO animals  VALUES ('Angemon','Jun 12 2005', -45.0, true, 1);
INSERT INTO animals  VALUES ('Boarmon','Jun 7 2005', 20.4, true, 7);
INSERT INTO animals  VALUES ('Blossom','Oct 13 1998', 17.0, true, 3);
INSERT INTO animals  VALUES ('Ditto','May 14 2022', 22.0, true, 4);

INSERT INTO owners(full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES ('Bob', 45);
INSERT INTO owners(full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners(full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species(name) VALUES ('Pokemon');
INSERT INTO species(name) VALUES ('Digimon');

Update animals  SET species_id = 'digimon' WHERE name LIKE '%mon';
Update animals  SET species_id='pokemon' WHERE species IS NUll;

UPDATE animals set owner_id = 1 where name = 'Agumon';
UPDATE animals set owner_id = 2 where name in ('Gabumon', 'Pikachu');
UPDATE animals set owner_id = 3 where name in ('Devimon', 'Plantmon');
UPDATE animals set owner_id = 4 where name in ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals set owner_id = 5 where name in ('Angemon', 'Boarmon');



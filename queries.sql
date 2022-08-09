/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals where date_of_birth BETWEEN 'Jan 01 2016' AND 'Jan 01 2019';
SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name='Pikachu' OR name='Agumon';
SELECT name, escape_attempts FROM animals WHERE weight_kg >10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

Update animals set species='unspecified';
ROLLBACK;
Update animals  SET species='digimon' WHERE name LIKE '%mon';
Update animals  SET species='pokemon' WHERE species IS NUll;

BEGIN;
DELETE FROM animals; 
ROLLBACK;
Select *from animals;


Delete from animals where date_of_birth > 'Jan 1 2022';
SAVEPOINT save1;
UPDATE animals set weight_kg= weight_kg * -1 where weight_kg < 0;
ROLLBACK;
UPDATE animals set weight_kg= weight_kg * -1 where weight_kg < 0;
Commit;


SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals where escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT species,  MAX(weight_kg) FROM animals Group by species;
SELECT species,  Min(weight_kg) FROM animals Group by species;
SELECT  AVG(escape_attempts) FROM animals where date_of_birth BETWEEN 'Jan 01 1990' AND 'Jan 01 2000';



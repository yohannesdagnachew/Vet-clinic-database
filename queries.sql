/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals where date_of_birth BETWEEN 'Jan 01 2016' AND 'Jan 01 2019';
SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name='Pikachu' OR name='Agumon';
SELECT name, escape_attempts FROM animals WHERE weight_kg >10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals where escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT species,  MAX(weight_kg) FROM animals Group by species;
SELECT species,  Min(weight_kg) FROM animals Group by species;
SELECT  AVG(escape_attempts) FROM animals where date_of_birth BETWEEN 'Jan 01 1990' AND 'Jan 01 2000';


SELECT name FROM animals a JOIN owners o ON o.Id = a.id;
SELECT name,full_name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT animals.name, species.name FROM animals JOINnimals.species_id = species.id WHERE species.name = 'Pokemon';
Select owners.full_name, animals.name FROM owners JOIN animals on animals.owner_id = owners.id;
SELECT species.name, COUNT(*) FROM animals JOIN species on animals.species_id=species.id GROUP BY species.name;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell';
Select animals.name, owners.full_name, species.name FROM animals JOIN owners on animals.owner_id = owners.id 
                                 JOIN species on animals.species_id = species.id
                                 where species.name = 'Digimon' AND owners.full_name='Jennifer Orwell';
SELECT animals.name,animals.escape_attempts,owners.full_name FROM animals JOIN owners ON animals.owner_id = owners.id
  WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';                                
SELECT owners.full_name as owner_full_name,COUNT(animals.name) AS Number_of_animals
FROM owners LEFT JOIN animals ON owners.id = animals.owner_id GROUP BY owner_full_name ORDER BY Number_of_animals DESC;

/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals where date_of_birth BETWEEN 'Jan 01 2016' AND 'Jan 01 2019';
SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name='Pikachu' OR name='Agumon';
SELECT name, escape_attempts FROM animals WHERE weight_kg >10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
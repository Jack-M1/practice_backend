CREATE DATABASE PersonalTest_JackM;

use PersonalTest_JackM;

show tables;

CREATE TABLE `Dog` (
	`SpeciesName` varchar(50) NOT NULL,
    `Length` int,
    `Height` int
);

ALTER TABLE Dog
	ADD PRIMARY KEY(SpeciesName);
    
CREATE TABLE BreedType (
	SpeciesName varchar(50) not null,
    BreedType varchar(20),
    CONSTRAINT FK_SpeciesName FOREIGN KEY (SpeciesName)
    REFERENCES Dog(SpeciesName)
);

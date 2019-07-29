
Create Database RepositoryContext;

CREATE TABLE Person(
	Id INT IDENTITY(1,1) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	CONSTRAINT PK_PersonaId PRIMARY KEY(Id)
	)
CREATE TABLE PersonAddress(
	Id INT IDENTITY(1,1) NOT NULL,
	PersonId INT NOT NULL,
	Address VARCHAR(MAX) NULL,
	CONSTRAINT PK_PersonAddressId PRIMARY KEY(Id),
	CONSTRAINT FK_Person_PersonId FOREIGN KEY (PersonId) REFERENCES Person(Id)
	)
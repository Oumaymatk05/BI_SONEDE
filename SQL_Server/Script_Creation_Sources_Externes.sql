--creation base de donnee--
CREATE DATABASE DW_SONEDE;
GO
USE DW_SONEDE;
GO

CREATE TABLE Dim_Pluviometrie (
    ID_Pluvio INT IDENTITY(1,1) PRIMARY KEY,
    Code_Gouvernorat VARCHAR(20),
    Annee INT,
    Mois INT,
    Precipitation_mm DECIMAL(10, 2)
);

CREATE TABLE Fact_Desserte_Population (
    ID_Desserte INT IDENTITY(1,1) PRIMARY KEY,
    Annee INT,
    Gouvernorat VARCHAR(50),
    Type_Population VARCHAR(100),
    Effectif_Milliers DECIMAL(10, 2)
);
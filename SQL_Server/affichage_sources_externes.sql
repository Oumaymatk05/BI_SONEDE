USE DW_SONEDE;
GO

SELECT 
    COUNT(*) AS Total_Lignes,
    COUNT(DISTINCT Code_Gouvernorat) AS Nb_Gouvernorats,
    MIN(Annee) AS Annee_Min,
    MAX(Annee) AS Annee_Max
FROM dbo.Dim_Pluviometrie;

SELECT TOP 20 *
FROM dbo.Dim_Pluviometrie
ORDER BY Code_Gouvernorat, Annee, Mois;
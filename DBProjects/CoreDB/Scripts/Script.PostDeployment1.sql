/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/*
CoreDB Post-Deployment Script
*/

:r .\Post-Deployment\scriptCountries.sql
:r .\Post-Deployment\scriptRegions.sql
:r .\Post-Deployment\scriptDistricts.sql
:r .\Post-Deployment\scriptPlaces.sql
:r .\Post-Deployment\scriptNationalIdTypes.sql
:r .\Post-Deployment\scriptGenders.sql
:r .\Post-Deployment\scriptEmployees.sql




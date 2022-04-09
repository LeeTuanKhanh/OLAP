Create database Datalake_Videogames_Sales;
create database DataWareHouse_Videogames_Sales;
use DataWareHouse_Videogames_Sales
select * from dbo.Dim_VideoGames
select * from dbo.Dim_Date;
select * from Fact_VideoGames_Sales

use Datalake_Videogames_Sales
select * from dbo.[Clean_Data];
select * from dbo.[Null_Data];
select * from dbo.[Original_Data];

--check null
ISNULL( [Name] ) || ISNULL( [Platform] ) || ISNULL( [Year_of_Release] ) || ISNULL( [Genre] ) || ISNULL( [Publisher] ) || ISNULL( [NA_Sales] ) || ISNULL( [EU_Sales] ) || ISNULL( [JP_Sales] ) || ISNULL( [Other_Sales] ) || ISNULL( [Global_Sales] ) || ISNULL( [Critic_Score] ) || ISNULL( [Critic_Count] ) || ISNULL( [User_Score] ) || ISNULL( [User_Count] ) || ISNULL( [Developer] ) || ISNULL( [Rating] )

if not exists (select name from sys.foreign_keys where name = 'FK_FACT_VID')
	begin
		ALTER TABLE Fact_VideoGames_Sales
		ADD CONSTRAINT FK_FACT_VID
		FOREIGN KEY(Video_ID) REFERENCES Dim_VideoGames(Video_ID);
	end
GO

if not exists (select name from sys.foreign_keys where name = 'FK_FACT_DATE')
	begin
		ALTER TABLE Fact_VideoGames_Sales
		ADD CONSTRAINT FK_FACT_DATE
		FOREIGN KEY(Year_of_Release) REFERENCES Dim_Date(Year_of_Release);
	end
GO


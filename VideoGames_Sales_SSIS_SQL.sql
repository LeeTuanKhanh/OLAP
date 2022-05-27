Create database Datalake_Videogames_Sales;
create database DataWareHouse_Videogames_Sales;

if exists ( select name from sys.Tables where name = 'Original_data')
	begin
		DELETE  Original_data;
	end 
go

if exists ( select name from sys.Tables where name = 'Clean_data')
	begin
		DELETE  Clean_data;
	end 
go

if exists ( select name from sys.Tables where name = 'Null_data')
	begin
		DELETE  Null_data;
	end 
go

ISNULL( [Name] ) || ISNULL( [Platform] ) || ISNULL( [Year_of_Release] ) || ISNULL( [Genre] ) || ISNULL( [Publisher] ) || ISNULL( [NA_Sales] ) || ISNULL( [EU_Sales] ) || ISNULL( [JP_Sales] ) || ISNULL( [Other_Sales] ) || ISNULL( [Global_Sales] ) || ISNULL( [Critic_Score] ) || ISNULL( [Critic_Count] ) || ISNULL( [User_Score] ) || ISNULL( [User_Count] ) || ISNULL( [Developer] ) || ISNULL( [Rating] )
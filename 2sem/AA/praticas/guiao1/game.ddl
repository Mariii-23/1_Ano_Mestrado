CREATE TABLE GMS (Id SERIAL NOT NULL, PRIMARY KEY (Id));
CREATE TABLE Game (Id SERIAL NOT NULL, PlatformId int4 NOT NULL, UserId int4 NOT NULL, Name varchar(255), Year int4 NOT NULL, Price float8 NOT NULL, Description varchar(255), PRIMARY KEY (Id));
CREATE TABLE "User" (Id SERIAL NOT NULL, GMSId int4 NOT NULL, Name varchar(255), Email varchar(255), Password varchar(255), PRIMARY KEY (Id));
CREATE TABLE Platform (Id SERIAL NOT NULL, Name varchar(255), Year int4 NOT NULL, Description varchar(255), Manufacturer varchar(255), PRIMARY KEY (Id));
ALTER TABLE Game ADD CONSTRAINT games FOREIGN KEY (UserId) REFERENCES "User" (Id);
ALTER TABLE Game ADD CONSTRAINT platform FOREIGN KEY (PlatformId) REFERENCES Platform (Id);
ALTER TABLE "User" ADD CONSTRAINT users FOREIGN KEY (GMSId) REFERENCES GMS (Id);

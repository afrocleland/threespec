##Table creation
create table Appointments (AppId VARCHAR(8), DateTime VARCHAR(20) , StaffId VARCHAR(8), ClientId VARCHAR(8), BranchId Varchar(8));
create table Clients (ClientId VARCHAR(20), Forename VARCHAR(20) , Surname VARCHAR(8), Email VARCHAR(40), MobileNumber Varchar(13), HomeNumber Varchar(13));
create table StaffId (StaffId VARCHAR(10), Forename VARCHAR(20) , Surname VARCHAR(8), Email VARCHAR(40), MobileNumber Varchar(13), HomeNumber Varchar(13), Level Varchar(10));


##Dummy Data population
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("1", "17:35, 16/07/2015", "rpaton", "kirstymckenna94", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("2", "11:35, 16/07/2015", "ksmith", "fionacee89xx", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("3", "09:35, 16/07/2015", "aneilson", "mariays", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("4", "11:30, 16/07/2015", "rpaton", "lilysmith", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("5", "11:10, 16/07/2015", "rpaton", "joyceforpm", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("6", "08:55, 15/07/2015", "aneilson", "jimthebutcher", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("7", "20:35, 15/07/2015", "ksmith", "jimthebutcher", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("8", "22:05, 15/07/2015", "ksmith", "kirstymckenna94", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("9", "19:00, 15/07/2015", "aneilson", "joyceforpm", "airdrie1");
INSERT INTO Appointments (AppId, DateTime, StaffId, ClientId, BranchId) VALUES ("10", "14:20, 15/07/2015", "rpaton", "fionacee89xx", "airdrie1");

INSERT INTO StaffId (StaffId, Forename, Surname, Email, MobileNumber, HomeNumber, Level) VALUES ("rpaton", "Ross", "Paton", "paton04@hotmail.com", "07666555444", "01698765456", "Apprentice");
INSERT INTO StaffId (StaffId, Forename, Surname, Email, MobileNumber, HomeNumber, Level) VALUES ("ksmith", "Kieran", "Smith", "super-afro@hotmail.com", "07867228930", "01698987123", "CEO");
INSERT INTO StaffId (StaffId, Forename, Surname, Email, MobileNumber, HomeNumber, Level) VALUES ("aneilson", "Adam", "Neilson", "beans@hotmail.com", "07668223098", "01698798123", "Supervisor");

INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("kirstymckenna94", "Kirsty", "Mckenna", "weekirsty95@hotmail.com", "07668223598", "01698799923");
INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("fionacee89xx", "Fiona", "Campbell", "fionacee89xx@hotmail.com", "07668229998", "01698888923");
INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("mariays", "Maria", "Smith", "mariays@hotmail.com", "07668224598", "01698798823");
INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("lilysmith", "Lily", "Smith", "lilysmith@hotmail.com", "07668323598", "01698559923");
INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("joyceforpm", "Joyce", "Paton", "joyceforpm@hotmail.com", "07664223598", "01692399923");
INSERT INTO Clients (ClientId, Forename, Surname, Email, MobileNumber, HomeNumber) VALUES ("jimthebutcher", "Jim", "Meats", "jimthebutcher@hotmail.com", "07768223598", "01198799923");


DROP TABLE Contacts
DROP TABLE Accounts
DROP TABLE Request
DROP TABLE Cities
DROP TABLE Countries
DROP TABLE ItemCategories
DROP TABLE Messages
DROP TABLE UploadedFiles

CREATE TABLE Countries(
	ID INT IDENTITY,
	Name VARCHAR(150) NOT NULL,
	LongName VARCHAR(150) NOT NULL,
	ISO2 VARCHAR(3) NOT NULL,
	ISO3 VARCHAR(5) NOT NULL,
	NumCode INT NOT NULL,
	UNMemberState CHAR(5) NOT NULL,
	CallingCode VARCHAR(15) NOT NULL,
	CCTLD VARCHAR(5) NOT NULL,
	InternationalRegion VARCHAR(50) NOT NULL,	
	PRIMARY KEY (ID)
);

CREATE TABLE Cities(
	ID INT IDENTITY,
	Name VARCHAR(150) NOT NULL,
	ISO3 VARCHAR(5) NOT NULL,
	CountryID INT NOT NULL,
	CountryISO2 VARCHAR(5) NOT NULL,
	Timezone VARCHAR(15) NOT NULL,
	Lat FLOAT NOT NULL,
	Lon FLOAT NOT NULL,
	
	PRIMARY KEY (ID),
	FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE Currencies(
	ID INT IDENTITY,
	Name VARCHAR(150) NOT NULL,
	ISO3 VARCHAR(5) NOT NULL,
	CountryID INT NOT NULL,
	
	PRIMARY KEY (ID),
	FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE ItemCategories(
	ID INT,
	Name VARCHAR(150) NOT NULL,
	ParentID INT NOT NULL,
	
	PRIMARY KEY (ID)
);

CREATE TABLE Accounts
(
	ID			   INTEGER IDENTITY,
	Password       VARCHAR(20) NOT NULL,
	FName          VARCHAR(40) NOT NULL,
	LName          VARCHAR(40) NOT NULL,
	Email          VARCHAR(40) UNIQUE, 
	SecurityQ      VARCHAR(MAX),
	SecurityA      VARCHAR(255),
	AdminStats	   CHAR(1) DEFAULT '0',
	LoginAttempts  INTEGER DEFAULT 0, 
	CompanyName	   VARCHAR(250) DEFAULT '',
	CountryID	   INTEGER,
	CityID		   INTEGER, 
	PasswordSalt   VARCHAR(254),
	Address1	   VARCHAR(150), 
	Address2	   VARCHAR(150), 
	PostalCode	   VARCHAR(10), 
	Phone1		   VARCHAR(50), 
	Phone2		   VARCHAR(50), 
	Fax1		   VARCHAR(50), 
	Fax2		   VARCHAR(50), 
	IsVerified	   CHAR(1) DEFAULT '0',
	IsPublicProfile	   CHAR(1) DEFAULT '0',
	Lang	   	   CHAR(8) DEFAULT 'en',
	--User level starts from
	-- 1: Normal user
	-- 99: Admin
	UserLevel  	   CHAR(2) DEFAULT '1',
	Created_at	   DATETIME NOT NULL DEFAULT GETDATE(),
	UserStatuts    CHAR(1) DEFAULT '1'

	PRIMARY KEY (ID), 
	
	FOREIGN KEY (CountryID) REFERENCES Countries(ID),
	FOREIGN KEY (CityID) REFERENCES Cities(ID)
);

CREATE TABLE Contacts(
	ID				INTEGER	IDENTITY,
	Created_at		DATETIME NOT NULL DEFAULT GETDATE(),
	Accepted_at		DATETIME DEFAULT NULL,
	RequesterID		INTEGER NOT NULL,
	ContactID		INTEGER NOT NULL

	PRIMARY KEY(ID),
	FOREIGN KEY (RequesterID) REFERENCES Accounts(ID),
	FOREIGN KEY (ContactID) REFERENCES Accounts(ID),
);

CREATE TABLE Messages(
	ID	INTEGER IDENTITY,
	SenderID INTEGER,
	ReceiverID INTEGER,
	MessageType CHAR(1),
	Content VARCHAR(MAX),
	AttachmentPhysicFile VARCHAR(150),
	AttachmentFileName VARCHAR(MAX),
	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID)
);


CREATE TABLE Request(
	ID	INTEGER IDENTITY,
	Name VARCHAR(250),
	RequestType CHAR(1),
	UploaderID INTEGER,
	ItemCategoryID INT,
	MinQty FLOAT,
	Unit VARCHAR(5),
	Currency VARCHAR(50),
	MinPrice FLOAT,
	Weight FLOAT,
	WeightUnit VARCHAR(20),
	Packaging VARCHAR(50),
	PlaceOfOriginCountryID INTEGER, 
	PlaceOfOriginCityID INTEGER, 
	SupplyAbility INTEGER,
	SupplyAbilityUnit VARCHAR(20),
	SupplyAbilityTimeUnit VARCHAR(20),
	Description TEXT,

	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	FOREIGN KEY (CountryID) REFERENCES Countries(ID),
	FOREIGN KEY (CityID) REFERENCES Cities(ID),
	FOREIGN KEY (ItemCategoryID) REFERENCES ItemCategories(ID)
);


CREATE TABLE AccountViewList(
	ID	INTEGER IDENTITY,
	UserID INTEGER,
	VisitedID INTEGER,

	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	FOREIGN KEY (UserID) REFERENCES Accounts(ID),
	FOREIGN KEY (VisitedID) REFERENCES Accounts(ID)
);

CREATE TABLE ItemViewList(
	ID	INTEGER IDENTITY,
	UserID INTEGER,
	ItemCategoryID INT,

	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	FOREIGN KEY (UserID) REFERENCES Accounts(ID),
	FOREIGN KEY (ItemCategoryID) REFERENCES ItemCategories(ID)
);

CREATE TABLE InterestedList(
	ID	INTEGER IDENTITY,
	UserID INTEGER,
	ItemCategoryID INT,

	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	FOREIGN KEY (UserID) REFERENCES Accounts(ID),
	FOREIGN KEY (ItemCategoryID) REFERENCES ItemCategories(ID)
);


CREATE TABLE UploadedFiles(
	ID	INTEGER IDENTITY,
	Name VARCHAR(250),
	FileType VARCHAR(250),
	RequestID INT,

	Created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	FOREIGN KEY (RequestID) REFERENCES Request(ID)
);
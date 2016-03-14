CREATE TABLE COUNTRIES
(
	[ID] [int] NOT NULL,
	[ISO2] [char](2) NULL,
	[CountryName] [varchar](80) NOT NULL,
	[LongCountryName] [varchar](80) NOT NULL,
	[ISO3] [char](3) NULL,
	[NumCode] [varchar](6) NULL,
	[UNMemberState] [varchar](12) NULL,
	[CallingCode] [varchar](8) NULL,
	[CCTLD] [varchar](5) NULL,
	[InternationalRegion] [varchar](50) NULL,
	created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID),
	CONSTRAINT Check_CName CHECK (LEN(CountryName) >= 3) 
);

CREATE TABLE CITIES
(
	ID INTEGER IDENTITY,
	[cityCode] [varchar](50) NULL,
	[cityName] [varchar](200) NULL,
	[countryCode] [varchar](200) NULL,
	[timezone] [varchar](8) NULL,
	[lat] [varchar](32) NULL,
	[lon] [varchar](32) NULL,
	created_at datetime NOT NULL DEFAULT GETDATE(),
	
	PRIMARY KEY(ID),	
	FOREIGN KEY (countryCode)REFERENCES COUNTRIES(ID),
	CONSTRAINT Check_CityName CHECK (LEN(cityName) >= 2), 
	CONSTRAINT Check_CountryCode CHECK (LEN(countryCode) >= 2)
);

CREATE TABLE ACCOUNT
(
	ID			   INTEGER IDENTITY,
	password       VARCHAR(20) NOT NULL,
	fName          VARCHAR(40) NOT NULL,
	lName          VARCHAR(40) NOT NULL,
	email          VARCHAR(40) UNIQUE, 
	securityQ      VARCHAR(MAX),
	securityA      VARCHAR(255),
	adminStats	   CHAR(1) DEFAULT '0',
	loginAttempts  INTEGER DEFAULT 0, 
	countryCode	   VARCHAR(3),
	cityID		   INTEGER DEFAULT 0, 
	passwordSalt   INTEGER DEFAULT 0, 
	address1	   VARCHAR(150), 
	address2	   VARCHAR(150), 
	postalCode	   VARCHAR(10), 
	phone1		   VARCHAR(50), 
	phone2		   VARCHAR(50), 
	fax1		   VARCHAR(50), 
	fax2		   VARCHAR(50), 
	isVerified	   CHAR(1) DEFAULT '0',
	isPublicProfile	   CHAR(1) DEFAULT '0',
	lang	   	   CHAR(8) DEFAULT 'en',
	--User level starts from
	-- 1: Normal user
	-- 99: Admin
	userLevel  	   CHAR(2) DEFAULT '1',
	created_at datetime NOT NULL DEFAULT GETDATE(),
	userStatuts    CHAR(1) DEFAULT '1'

	PRIMARY KEY (ID), 
	
	FOREIGN KEY (countryCode) REFERENCES COUNTRIES(code),
	FOREIGN KEY (cityID) REFERENCES CITIES(ID),

	CONSTRAINT Check_ACCPassword CHECK (LEN(password) >= 8),  
	-- Check if Account status is either DISABLE(0), ACTIVE(1) or PENDING(2)  
	CONSTRAINT Check_ACCStatus  CHECK (userStatuts IN ('0', '1', '2')),
	CONSTRAINT Check_UserStats CHECK (userLevel >= 0)  
);
CREATE TABLE ITEMCATEGORIES(
	ID	INTEGER,
	name VARCHAR(150),
	parentID INTEGER NULL, 

	PRIMARY KEY(ID),
	FOREIGN KEY parentid_fk (parentid) REFERENCES ITEMCATEGORIES (ID)
);
CREATE TABLE ITEMS(
	ID	INTEGER IDENTITY
);



CREATE TABLE REQUESTS(
	ID	INTEGER IDENTITY,
	requestType CHAR(1),
	uploaderID INTEGER,

	created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID)
);

CREATE TABLE MESSAGES(
	ID	INTEGER IDENTITY,
	senderID INTEGER,
	receiverID INTEGER,
	messageType CHAR(1),
	content VARCHAR(MAX),
	attachmentPhysicFile VARCHAR(150),
	attachmentFileName VARCHAR(MAX),
	created_at datetime NOT NULL DEFAULT GETDATE(),

	PRIMARY KEY(ID)
);

CREATE TABLE CONTACTS(
	ID INTEGER IDENTITY,
	--https://github.com/pdk2580/Trade24.git
	created_at datetime NOT NULL DEFAULT GETDATE(),
	accepted_at datetime NOT NULL DEFAULT GETDATE(),
	requesterID INTEGER,
	contactID INTEGER

	PRIMARY KEY(ID),
	FOREIGN KEY (requesterID) REFERENCES ACCOUNTS(ID),
	FOREIGN KEY (contactID) REFERENCES ACCOUNTS(ID),
);
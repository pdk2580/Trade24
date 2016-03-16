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

CREATE TABLE ItemCategories(
	ID INT IDENTITY,
	Name VARCHAR(150) NOT NULL,
	ParentID INT NOT NULL,
	
	PRIMARY KEY (ID),
	FOREIGN KEY (ParentID) REFERENCES ItemCategories(ID)
);

CREATE TABLE Accounts
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
	created_at datetime NOT NULL DEFAULT GETDATE(),
	accepted_at datetime NOT NULL DEFAULT GETDATE(),
	requesterID INTEGER,
	contactID INTEGER

	PRIMARY KEY(ID),
	FOREIGN KEY (requesterID) REFERENCES ACCOUNTS(ID),
	FOREIGN KEY (contactID) REFERENCES ACCOUNTS(ID),
);
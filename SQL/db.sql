CREATE TABLE User_reg (
	uid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	login ChAR(20) NOT NULL,
	name CHAR(20) NOT NULL,
	email CHAR(40) NOT NULL, 
	password CHAR(50) NOT NULL
	petname CHAR(20) NOT NULL,
	)
	
CREATE TABLE User_address (
	uid INTEGER NOT NULL PRIMARY KEY,
	address CHAR(50) NOT NULL,
	FOREIGN KEY (uid) REFERENCES User_reg(uid),
)

 CREATE TABLE Follow (
 	followee INTEGER NOT NULL,
 	follower INTEGER NOT NULL,
 	PRIMARY KEY (followee, follower),
 	FOREIGN KEY (follower) REFERENCES User_reg (uid),
 	FOREIGN KEY (followee) REFERENCES User_reg (uid)
 	)

 CREATE TABLE Picture (
 	pid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 	picture_url CHAR(60) NOT NULL,
 	picture_name ChAR(60) NOT NULL,
 	picture_owner INTEGER NOT NULL,
 	FOREIGN KEY (picture_owner) REFERENCES User_reg (uid)
 	)

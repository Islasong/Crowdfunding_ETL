-- DROP TABLE category CASCADE;
CREATE TABLE category (
	category_id VARCHAR(255) NOT NULL,
	category VARCHAR(255) NOT NULL,	
	PRIMARY KEY (category_id)
);

SELECT * FROM Category;


DROP TABLE subcategory;
CREATE TABLE subcategory (
	subcategory_id VARCHAR(255) NOT NULL,
	subcategory VARCHAR(255) NOT NULL,
	PRIMARY KEY (subcategory_id)	
);

SELECT * FROM Subcategory;

Drop TABLE campaign
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR (255) NOT NULL,
	description VARCHAR (255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (255) NOT NULL,
	currency VARCHAR (255) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (255) NOT NULL,
	subcategory_id VARCHAR (255) NOT NULL,	
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id)
	
);

SELECT * FROM campaign;


-- DROP TABLE contacts;
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	PRIMARY KEY (contact_id)	
);

SELECT * FROM contacts;

-- table category
create table category( 
      category_id varchar(255) not null,
	category varchar(255) not null,
	primary key(category_id))

create table subcategory( 
      subcategory_id varchar(255) not null,
	subcategory varchar(255) not null,
	primary key(subcategory_id))
create table campaign(
		cf_id int not null, 
	 contact_id Int not null,
	company_name varchar(255) not null,
	description varchar(255) not null,
	goal float not null,
		pledge float not null,
	outcome varcher not null,
	backer_count int not null,
	 country varchar(255) not null,
	currency varchar(255) not null,
	launched_date date,
	end_date date,
	category_id varchar(255) not null,
	subcategory varchar(255) null,
	primary key (cf_id),
	foreign key (category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id))
	
	create table contacts(
	contact_id int not null,
	first_name varchar(255) not null,
		last_name varchar(255) not null,
		email varchar(255) not null,
		primary key(contact_id))
	
	
	
	
	
	)
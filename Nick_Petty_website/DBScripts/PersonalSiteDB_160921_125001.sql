-- Profile [ent3]
create table `profile` (
   `oid`  integer  not null,
   `about`  longtext,
   `picture`  varchar(255),
   `name`  varchar(255),
  primary key (`oid`)
);


-- Contact [ent4]
create table `contact` (
   `oid`  integer  not null,
   `phone_number`  varchar(255),
   `email`  varchar(255),
   `name`  varchar(255),
  primary key (`oid`)
);



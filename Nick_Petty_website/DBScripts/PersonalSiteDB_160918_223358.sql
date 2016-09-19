-- Class [ent2]
create table `class` (
   `oid`  integer  not null,
   `semester`  varchar(255),
   `description`  longtext,
   `grade`  varchar(255),
   `instructor`  varchar(255),
   `title`  varchar(255),
   `course_label`  varchar(255),
  primary key (`oid`)
);



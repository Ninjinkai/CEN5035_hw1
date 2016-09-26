-- Group [Group]
create table `group_2` (
   `oid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`oid`)
);


-- Module [Module]
create table `module_2` (
   `oid`  integer  not null,
   `moduleid`  varchar(255),
   `modulename`  varchar(255),
  primary key (`oid`)
);


-- User [User]
create table `user_2` (
   `oid`  integer  not null,
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
  primary key (`oid`)
);


-- Comment [ent1]
create table `comment` (
   `oid`  integer  not null,
   `date`  date,
   `comment`  longtext,
   `visitor_name`  varchar(255),
  primary key (`oid`)
);


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


-- Profile [ent3]
create table `profile` (
   `oid`  integer  not null,
   `about`  longtext,
   `picture`  varchar(255),
   `pictureblob`  longblob,
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


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group_2`  add column  `module_2_oid`  integer;
alter table `group_2`   add index fk_group_2_module_2 (`module_2_oid`), add constraint fk_group_2_module_2 foreign key (`module_2_oid`) references `module_2` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_2_oid`  integer not null,
   `module_2_oid`  integer not null,
  primary key (`group_2_oid`, `module_2_oid`)
);
alter table `group_module`   add index fk_group_module_group_2 (`group_2_oid`), add constraint fk_group_module_group_2 foreign key (`group_2_oid`) references `group_2` (`oid`);
alter table `group_module`   add index fk_group_module_module_2 (`module_2_oid`), add constraint fk_group_module_module_2 foreign key (`module_2_oid`) references `module_2` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user_2`  add column  `group_2_oid`  integer;
alter table `user_2`   add index fk_user_2_group_2 (`group_2_oid`), add constraint fk_user_2_group_2 foreign key (`group_2_oid`) references `group_2` (`oid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_2_oid`  integer not null,
   `group_2_oid`  integer not null,
  primary key (`user_2_oid`, `group_2_oid`)
);
alter table `user_group`   add index fk_user_group_user_2 (`user_2_oid`), add constraint fk_user_group_user_2 foreign key (`user_2_oid`) references `user_2` (`oid`);
alter table `user_group`   add index fk_user_group_group_2 (`group_2_oid`), add constraint fk_user_group_group_2 foreign key (`group_2_oid`) references `group_2` (`oid`);



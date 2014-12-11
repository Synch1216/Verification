--Week 14 Assignment
--1 . www.instagram.com


CREATE DATABASE instagram
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'C'
       LC_CTYPE = 'C'
       CONNECTION LIMIT = -1;

CREATE TABLE "User"
(
  "User" character varying(100) NOT NULL,
  id serial NOT NULL,
  CONSTRAINT profileid PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "User"
  OWNER TO postgres;


  
CREATE TABLE "posts"
(
  "posts" character varying,
  id serial NOT NULL,
  type character varying(100),
  CONSTRAINT id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "posts"
  OWNER TO postgres;

select EnergyCategories, EnergyTypes from EnergyCategories, EnergyTypes where id.EnergyCategories = type.EnergyType order by EnergyCategories;

CREATE TABLE "tags"
(
  "tags" character varying,
  id serial NOT NULL,
  type character varying(100),
  CONSTRAINT tagid PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tags"
  OWNER TO postgres;

  CREATE TABLE "comments"
(
  "comments" character varying,
  id serial NOT NULL,
  type character varying(100),
  CONSTRAINT commentid PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "comments"
  OWNER TO postgres;

   INSERT INTO User (profileid, name, posts, comments)
VALUES ('2','Cassie','21','3'); 


   INSERT INTO Posts (id,status, tags)
VALUES ('2',,'21','#Oscars'); 


   INSERT INTO Tags (id, userid, postid)
VALUES ('3','2','21','3'); 

select * posts from User;
Select * tags where tags like '#Oscars'

 

  
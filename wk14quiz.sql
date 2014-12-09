CREATE DATABASE buildingenergy
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'C'
       LC_CTYPE = 'C'
       CONNECTION LIMIT = -1;

CREATE TABLE "EnergyCategories"
(
  "EnergyCategories" character varying(100) NOT NULL,
  id serial NOT NULL,
  CONSTRAINT categories_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "EnergyCategories"
  OWNER TO postgres;
CREATE TABLE "EnergyTypes"
(
  "EnergyType" character varying,
  id serial NOT NULL,
  type character varying(100),
  CONSTRAINT energy_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "EnergyTypes"
  OWNER TO postgres;

select EnergyCategories, EnergyTypes from EnergyCategories, EnergyTypes where id.EnergyCategories = type.EnergyType order by EnergyCategories;
  
CREATE TABLE "Buildings"
(
  "Building" character varying,
  id serial NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Buildings"
  OWNER TO postgres;

  select Buildings, EnergyTypes from Buildings, EnergyTypes where Buildings.Buildings = type.EnergyTypes order by Buildings;


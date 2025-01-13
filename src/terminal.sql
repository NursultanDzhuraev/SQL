-- postgres=#
-- create table Countrys
-- (
--     postgres(# id serial primary key,
--     name varchar(50) not null,
--     code varchar unique
-- );
-- CREATE TABLE




-- create table Cities
-- (
--     postgres(# id serial primery key,
--     postgres(# name varchar (50) not null,
--     postgres(# code int unique,
--     postgres(# people_amount int
-- );
-- ERROR:  syntax error at or near "primery"
-- LINE 2: id serial primery key,
--                   ^
-- postgres=#
-- create table Countrys
-- (
--     id   serial primery key,
--     name varchar(50) not null,
--     code varchar unique
-- );
-- ERROR:  syntax error at or near "primery"
-- LINE 2: id serial primery key , name varchar(50) not null, code varc...
--                   ^
-- postgres=#
-- create table Countrys
-- (
--     id   serial primary key,
--     name varchar(50) not null,
--     code varchar unique
-- );
-- ERROR:  relation "countrys" already exists
-- postgres=#
-- create table Cities
-- (
--     id            serial primary key,
--     name          varchar(50) not null,
--     code          int unique,
--     people_amount int
-- );




-- CREATE TABLE
-- postgres=#
-- create table region
-- (
--     postgres(# id serial primary key,
--     postgres(# name varchar (50),
--     postgres(# countrys_id int references countrys(id)
-- );




-- CREATE TABLE
-- postgres=#
-- alter table cities
--     add column region_id int references region (id);
-- ALTER TABLE




-- postgres=#
-- create table village
-- (
--     postgres(# id serial primary key,
--     postgres(# name varchar (50),
--     postgres(# status varchar (50) not null,
--     postgres(# region_id int references region(id)
-- );
-- CREATE TABLE;





-- postgres=#
-- create table cafe
-- (
--     postgres(# id serial primary key,
--     postgres(# name varchar (50) not null,
--     postgres(# address varchar (50)
--         postgres(# date_of_brith date);
-- ERROR:  syntax error at or near "date_of_brith"
-- LINE 5: date_of_brith date);
-- ^
-- postgres=#
-- create table cafe
-- (
--     id            serial primary key,
--     name          varchar(50) not null,
--     address       varchar(50),
--     date_of_brith date
-- );




-- CREATE TABLE
-- postgres=#
-- create table waiters
-- (
--     postgres(# id serial primary key,
--     postgres(# last_name varchar,
--     postgres(# fist_name varchar not null,
--     postgres(# gender varchar
-- );
-- CREATE TABLE





-- postgres=#
-- create table bartender
-- (
--     postgres(# id serial primary key,
--     postgres(# last_name varchar (50),
--     postgres(# first_name varchar (50) not null,
--     postgres(# experience int
-- );
-- CREATE TABLE
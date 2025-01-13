create database firm;
create table Farmers
(
    id           serial primary key,
    company_name varchar(50) not null,
    address      varchar(50) not null,
    owner_id     int references Owner (id)
);
create table Workers
(
    id        serial primary key,
    fist_name varchar(60) not null,
    last_name varchar(50),
    gender    varchar     not null,
    age       int,
    farmer_id int references Farmers (id)
);
create table Owner
(
    id        serial primary key,
    fist_name varchar(60) not null,
    last_name varchar(50),
    gender    varchar     not null,
    age       int
);
create table Horses
(
    id         serial primary key,
    nickname   varchar(40),
    gender     varchar not null,
    age        int,
    farmers_id int references Farmers (id)
);
create table Cows
(
    id         serial primary key,
    nickname   varchar(40),
    gender     varchar not null,
    age        int,
    farmers_id int references Farmers (id)
);
create table Sheep
(
    id         serial primary key,
    nickname   varchar(40),
    gender     varchar not null,
    age        int,
    farmers_id int references Farmers (id)
);
create table Tractor
(
    id           serial primary key,
    name         varchar,
    engine_type  varchar not null,
    power        int,
    model        varchar,
    displacement varchar not null,
    farmers_id   int references Farmers (id)
);
create table Combine_harvester
(
    id           serial primary key,
    name         varchar,
    engine_type  varchar not null,
    power        int,
    model        varchar,
    displacement varchar not null,
    farmers_id   int references Farmers (id)
);
create table Kamaz
(
    id            serial primary key,
    name          varchar not null,
    model         varchar,
    data_of_Brith date,
    farmers_id    int references Farmers (id)
);
create table Car
(
    id            serial primary key,
    name          varchar not null,
    color         varchar,
    model         varchar,
    number        varchar unique,
    data_of_Brith date,
    farmers_id    int references Farmers (id)
);
-- Filling Owner table
INSERT INTO Owner (fist_name, last_name, gender, age)
VALUES ('John', 'Doe', 'Male', 45),
       ('Mary', 'Smith', 'Female', 40),
       ('Ahmed', 'Khan', 'Male', 50);

-- Filling Farmers table
INSERT INTO Farmers (company_name, address, owner_id)
VALUES ('Green Valley', '123 Farm Lane', 1),
       ('Sunny Fields', '456 Country Rd', 2),
       ('Blue Hills', '789 Rural St', 3);

-- Filling Workers table
INSERT INTO Workers (fist_name, last_name, gender, age, farmer_id)
VALUES ('Alice', 'Brown', 'Female', 25, 1),
       ('Bob', 'White', 'Male', 30, 2),
       ('Clara', 'Black', 'Female', 28, 3);

-- Filling Horses table
INSERT INTO Horses (nickname, gender, age, farmers_id)
VALUES ('Thunder', 'Male', 5, 1),
       ('Shadow', 'Female', 4, 2),
       ('Blaze', 'Male', 6, 3);

-- Filling Cows table
INSERT INTO Cows (nickname, gender, age, farmers_id)
VALUES ('Bessie', 'Female', 3, 1),
       ('Daisy', 'Female', 4, 2),
       ('Moo', 'Male', 2, 3);

-- Filling Sheep table
INSERT INTO Sheep (nickname, gender, age, farmers_id)
VALUES ('Wooly', 'Female', 2, 1),
       ('Fluffy', 'Female', 3, 2),
       ('Snow', 'Male', 1, 3);

-- Filling Tractor table
INSERT INTO Tractor (name, engine_type, power, model, displacement, farmers_id)
VALUES ('John Deere', 'Diesel', 120, 'X590', '3.5L', 1),
       ('Massey Ferguson', 'Gasoline', 100, 'MF200', '2.8L', 2),
       ('New Holland', 'Diesel', 150, 'NH500', '4.0L', 3);

-- Filling Combine_harvester table
INSERT INTO Combine_harvester (name, engine_type, power, model, displacement, farmers_id)
VALUES ('Case IH', 'Diesel', 350, 'Axial-Flow 250', '8.7L', 1),
       ('Claas', 'Gasoline', 300, 'Lexion 8900', '7.7L', 2),
       ('John Deere', 'Diesel', 400, 'S790', '9.0L', 3);

-- Filling Kamaz table
INSERT INTO Kamaz (name, model, data_of_Brith, farmers_id)
VALUES ('Kamaz-55111', '1989', '1989-06-15', 1),
       ('Kamaz-43255', '1995', '1995-08-20', 2),
       ('Kamaz-65801', '2005', '2005-03-30', 3);

-- Filling Car table
INSERT INTO Car (name, color, model, number, data_of_Brith, farmers_id)
VALUES ('Toyota Hilux', 'Red', '2020', 'AB123CD', '2020-05-10', 1),
       ('Ford Ranger', 'Blue', '2018', 'XY456EF', '2018-07-25', 2),
       ('Chevrolet Silverado', 'Black', '2019', 'GH789IJ', '2019-10-15', 3);


create table if not exists students
(
    id        serial primary key,
    fill_name varchar not null,
    email     varchar unique
);
create table if not exists job
(
    id          serial primary key,
    professions varchar not null
);

create table if not exists employee
(
    id            serial primary key,
    fish_name     varchar not null,
    last_name     varchar,
    email         varchar unique,
    date_of_birth date    not null,
    job_id        int references job (id)
);
INSERT INTO job (professions)
VALUES ('Software Engineer'),
       ('Data Analyst'),
       ('Project Manager'),
       ('HR Specialist'),
       ('Sales Manager');
INSERT INTO employee (fish_name, last_name, email, date_of_birth, job_id)
VALUES ('John', 'Doe', 'john.doe@example.com', '1990-05-15', 1),
       ('Jane', 'Smith', 'jane.smith@example.com', '1992-07-20', 2),
       ('Alice', 'Brown', 'alice.brown@example.com', '1988-09-10', 3),
       ('Bob', 'Johnson', 'bob.johnson@example.com', '1995-03-12', 4),
       ('Charlie', 'White', 'charlie.white@example.com', '1998-11-30', 5);
create table if not exists Shools(
 id serial,
 name varchar,
 address varchar
);

drop database if exists recommendation;
create database recommendation;
use recommendation;
create table movies(
    m_id int primary key,
    m_name varchar(100),
    m_imdb float,
    m_rating int default NULL
);
insert into movies (m_id, m_name, m_imdb)
    values (1, 'HARRY POTTER AND THE PHILOSPHERS STONE', 7.6),
           (2, 'HARRY POTTER AND THE CHAMBER OF SECRETS', 7.4),
           (3, 'HARRY POTTER AND THE PRISONER OF ASKABAN', 7.8),
           (4, 'HARRY POTTER AND THE GOBLET OF FIRE', 7.7),
           (5, 'HARRY POTTER AND THE ORDER OF PHEONIX', 7.5),
           (6, 'HARRY POTTER AND THE HALF BLOOD PRINCE', 7.6),
           (7, 'HARRY POTTER AND THE DEATHLY HALLOWS PART 1', 7.7),
           (8, 'HARRY POTTER AND THE DEATHLY HALLOWS PART 2', 8.1),
           (9, 'Lord of the rings return of jedi', 8.1),
           (10, 'Avatar', 8.4),
           (12, 'The Pans Labirynth', 6.2),
           (13, 'Tommorows Land', 7.5),
           (14, 'Toy Story 1', 7.2),
           (15, 'Shrek 2', 7.1),
           (16, 'The incredibles', 6.9),
           (17, 'The Lion King', 7.9),
           (18, 'Frozen', 6.0),
           (19, 'Wall-E', 7.6),
           (20, 'Finding Nemo', 7.2),
           (21, 'Avengers The Infinity war', 8.8),
           (22, 'DeadPool 2', 8.2),
           (23, 'Justice League', 6.7),
           (24, 'Man of Steele', 6.2),
           (25, 'Guardians of the galaxy 2', 7.8),
           (26, 'Batman Darknight', 9.0),
           (27, 'Logan', 6.9),
           (28, 'Kungfu Panda ', 7.2),
           (29, 'Zootopia', 6.0),
           (30, 'Despicables me 2', 6.9),
           (31, 'Superbad ', 7.2),
           (32, 'Dictator', 8.8),
           (33, 'Borat', 8.2),
           (34, 'Hangover 1', 8.2),
           (35, 'Hocus-Pocus', 6.0),
           (36, 'Poltergeist', 6.5),
           (37, 'Conjuring 1', 8.4),
           (38, 'IT', 7.8),
           (39, 'The Exorcist', 8.0),
           (40, 'The Watcher in The Windows', 6.2),
           (41, 'Insidious', 7.5),
           (42, 'The Godfather', 9.2),
           (43, 'The Shawshank Redemption', 8.7),
           (44, 'Saving private Ryan', 9.0),
           (45, 'Titanic', 8.9),
           (46, 'Fault in our Stars', 7.8),
           (47, 'A beautiful mind', 8.9),
           (48, 'The persuit of happiness', 8.2),
           (49,'Dont mess with Zohan', 7.6),
           (50,'Madagascar 3',8.2)                   
           (51,'black hawkdown',8.6);
create table g_action(
    m_id int primary key         
);
insert into g_action(m_id)
    values (21),
           (22),
           (23),
           (24),
           (25),
           (26),
           (27),
           (28),
           (42),
           (44),
           (51);

create table g_fantasy(
    m_id int primary key
);
insert into g_fantasy(m_id)
    values (1),(2),(3),(4),
           (5),(6),(7),(8),
           (9),(10),(12),(13);
           
create table g_horror(
    m_id int primary key
);
insert into g_horror(m_id)
    values (35),(36),(37),(38),
           (39),(40),(41);

create table g_comedy(
    m_id int primary key
);
insert into g_comedy(m_id)
    values (14),(15),(16),(20),
           (22),(28),(29),(30),
           (31),(32),(33),(34),
           (49),(50);

create table g_drama(
    m_id int primary key
);
insert into g_drama(m_id)
    values (42),(43),(44),(45),
           (46),(47),(48);                   

create table g_animated(
    m_id int primary key
);
insert into g_animated(m_id)
    values (12),(14),(15),(16),
           (17),(18),(19),(20),
           (28),(29),(30),(50);        

create table users(
    u_id int,
    u_name varchar(20),
    u_age int);
insert into users(u_id,u_name,u_age)
    values (1,'Kanishk',20),
           (2,'Shruti',19),
           (3,'Rishabh',26),
           (4,'Pooja',19),
           (5,'Aman',20),
           (6,'Mayank',22),
           (7,'Asit',19),
           (8,'Anita',46),
           (9,'Raj',50),
           (10,'Shivani',20),
           (11,'Kartikey',20),
           (12,'Piyush',21),
           (13,'Pawan',20),
           (14,'Sagar',20),
           (15,'Gargi',19),
           (16,'Parul',45),
           (17,'Kamal',32),
           (18,'Deepika',29),
           (19,'Vaishnavi',21),
           (20,'Akshat',21)
`          (20,'Bhaanuj',21);

create table use_ratings(
    u_id int,
    m_id int,
    m_rating float,
    primary key (u_id, m_id));
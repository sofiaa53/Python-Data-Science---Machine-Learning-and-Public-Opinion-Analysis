DROP DATABASE IF EXISTS library;

#1. Persiapkan database, buat database dengan nama library
CREATE DATABASE IF NOT EXISTS library
;

#2. Pindahkan penggunaan pada database library
USE library
;

#3. Buat tabel
CREATE TABLE IF NOT EXISTS members(
	id int primary key auto_increment,
    name varchar(50) not null,
    city varchar(15) not null,
    age int not null,
    is_active tinyint not null
)
;

SHOW TABLES
;

#4. Input data yang telah disediakan
-- Taruh query di bawah
insert into members(name, city, age, is_active)
values
("Sana Huynh", "Ranzan", 27, 1),
("Luke Anderson", "Itoda", 26, 1),
("Nawal Hodges", "Tokyo", 30, 0),
("Khadijah Williamson", "Osaka", 28, 0),
("Carla Proctor", "Osaka", 27, 1),
("Sadie Cuevas", "Nagoya", 32, 1),
("Cayson Busby", "Kyoto", 26, 0),
("Phyllis Richards", "Nara", 29, 1),
("Jordi Rudd", "Tokyo", 31, 1),
("Stacy Holcomb", "Tokyo", 29, 1)
;


select * from members
;

#5. Edit data yang diperintahkan
-- Taruh query di bawah
update members
	SET is_active = 0
    where id = 6;


select * from members
;

#6. Hapus semua member yang sudah tidak aktif
-- Taruh query di bawah
delete from members
	where is_active = 0;


select * from members
;
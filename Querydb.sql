--1.	Write an SQL statement to display all cabins showing the following details: 
select cabinType, cabinDescription, pricePerNight, pricePerWeek, photo from cabin
--2.	Write an SQL statement to show the cabin type and price per night of cabins with a price per week = $1000 
select cabinType,pricePerNight from cabin
where pricePerWeek = 1000
--3.	Write an SQL statement to show the cabin type and photo of cabins with the price per night = $40 
select cabinType, photo from cabin
where pricePerNight = 40
--4.	Write an SQL statement to display the number of cabins with a hairdryer 
select count(*) cabinwithHairdryer from CabinInclusion
where incID = 11
--5.	Write an SQL statement to show the cabin type and photo name of cabins with a bunk bed 
select  c.cabinType, c.photo from cabin c
join CabinInclusion cb on c.cabinID = cb.cabinID
where cb.incID = 6
--6.	Write an SQL statement to display the cabin type, price per night and all inclusion names for the cabin “Spa Villa” 
select c.cabinType, c.pricePerNight, inc.incName
from cabin c join CabinInclusion cb on c.cabinID = cb.cabinID
join Inclusion inc on cb.incID = inc.incID
where c.cabinType like 'Spa villa%';
--7.	Write an SQL statement to add a new cabin type to the cabin table with the following data:
insert into cabin (cabinType, cabinDescription, pricePerNight, pricePerWeek, photo)
values
	('sample','details of sample cabin',50,250,'cabAdded.jpg' );
select * from cabin

--8.	Write an SQL statement to update the newly added cabin details, changing the price per night to $ 45
update cabin set pricePerNight =45, pricePerWeek=225 where cabinType = 'sample'
select * from cabin

--9.	Write an SQL statement to delete the newly added cabin from the cabin table. 
delete from cabin where cabinType ='sample'
select * from cabin

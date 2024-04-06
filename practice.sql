create table Students
(
    [Id] int,
    [Name] nvarchar(50),
    [Surname] nvarchar(50)
)

alter table Students
add [Age] int

alter table Students
add [Address] nvarchar(250)


alter table Students
drop column Address

EXEC sp_rename Students,Stu;

EXEC sp_rename Stu,Students;

EXEC sp_rename 'Students.Surname', Lastname;

EXEC sp_rename 'Students.Lastname', Surname;

select * from Students;

insert into Students
    ([Id],[Name],[Surname],[Age])
values
    (2, 'Semed', 'Huseynov', 27),
    (3, 'Nurlan', 'Musayev', 21),
    (4, 'Rufet', 'Nesibov', 21),
    (5, 'Elnur', 'Sefiyev', 19)


select [name] ,[surname] from Students;

select count (*) as [Student count] from Students;

select * from Students where [Id]>2;

select * from Students where [Age]>20 and [Age]<27;

select * from Students where [Age] BETWEEN 20 AND 30;

delete from Students where [id]=2;



create table Employees(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(50),
    [Surname] nvarchar(50) not null,
    [Email] nvarchar(50) unique,
)

select * from Employees;


insert into Employees ([Surname],[Email])
values('Kerimova', 'arzu2@gmail.com')

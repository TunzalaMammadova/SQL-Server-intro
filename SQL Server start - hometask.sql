create table Teachers
(
    [Id] int primary key identity(1,1) ,
    [Name] nvarchar(50),
    [Surname] nvarchar(50),
    [Email] nvarchar(250),
    [Age] int
)


create table Students
(
    [Id] int primary key identity(1,1) ,
    [Fullname] nvarchar(50),
    [Age] int,
    [Address] nvarchar(250),
)



insert into Teachers([Name],[Surname],[Age])
values('Cavid', 'Bashirov',30),
      ('Ali', 'Aliyev',23),
      ('Memmed', 'Memmedov', 35),
      ('Elnur', 'Memmedov', 24)



insert into Students([Fullname],[Age])
values('Semed Huseynov', 27),
      ('Tunzale Memmedova', 25),
      ('Elnur Memmedov', 20),
      ('Togrul Memmedov', 40)



UPDATE Teachers
SET Email = 'cavid@code.edu.az'
WHERE id=1;

UPDATE Teachers
SET Email = 'ali@gmail.com'
WHERE id=2;

UPDATE Teachers
SET Email = 'memmed@mail.ru'
WHERE id=3;

UPDATE Teachers
SET Email = 'elnur@code.edu.az'
WHERE id=4;




UPDATE Students
SET Address = 'Ehmedli'
WHERE id=1;

UPDATE Students
SET Address = 'Yasamal'
WHERE id=2;

UPDATE Students
SET Address = 'Azadliq'
WHERE id=3;

UPDATE Students
SET Address = 'Nesimi'
WHERE id=4;




select * from Teachers;

select * from Students;

select count (*) as [Student count] from Students;

select [name],[surname] from Teachers where [Age]>24;

SELECT * FROM Teachers
WHERE Email LIKE '%i%';
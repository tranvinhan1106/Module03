use QuanLiSinhVien ;
insert into Class 
values (1, 'A1' , '2008-12-20' , 1);
insert into Class 
values (2, 'A2' , '2008-12-22' , 1);
insert into Class 
values (3, 'A3' , current_date() , 0);
insert into Student (StudentName , Address , Phone, Status , ClassId)
values ('Hung' ,"Ha Noi",'1234567890',1,1);
insert into Student (StudentName , Address , Phone, Status , ClassId)
values ('Hoa' ,"Sai Gon",'0987654321',1,1);
insert into Student (StudentName , Address , Phone, Status , ClassId)
values ('Hung' ,"Da Nang",'1324576809',0,2);
insert into Subject
values(1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1); 
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
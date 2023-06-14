use QuanLiSinhVien ;
select * from  student 
where StudentName like 'h%';
select * from class
where month(StartDate) = '12' ;
select * from subject customercustomer
where credit between 3 and 5 ;
update student 
set  classId = 2 
where studentName = 'Hung';
select S.StudentName , Sub.SubName , M.Mark
From Student S join  Mark M on S.StudentId = M.StudentId join subject Sub on M.SubId = Sub.SubId
group by S.StudentName , Sub.SubName , M.Mark
order by M.Mark desc
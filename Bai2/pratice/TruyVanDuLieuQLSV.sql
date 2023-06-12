use QuanLiSinhVien;
Select * 
from student ;
select *
from student 
where status = true ;
select *
from subject 
where credit < 10 ; 
Select S.StudentId , S.StudentName , C.ClassName 
From student S join Class C on S.ClassId = C.ClassId
Where C.ClassName = 'A1';
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';
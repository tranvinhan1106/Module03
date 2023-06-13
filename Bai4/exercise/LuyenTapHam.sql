use  QuanLiSinhVien ;
select *
from subject
where Credit = (select max(Credit) from subject);
SELECT S.subId,S.subName,S.Credit,S.status
FROM Subject S
Left join Mark M on S.subId = M.subId
WHERE mark = (SELECT MAX(mark) FROM Mark);
SELECT St.studentId,St.studentName,St.address,St.Phone,St.Status,St.ClassId, AVG(M.Mark) AS DTB
FROM student St 
JOIN mark M on St.StudentId = M.StudentId
GROUP BY St.StudentId
ORDER BY AVG(M.Mark) DESC;
use FuramaResort;
-- Câu 2
select * from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'T%') or (ho_ten like 'K%')
and (select max(length(ho_ten))< 15);
-- Câu 3
select * from khach_hang
WHERE timestampdiff(year,ngay_sinh,curdate()) BETWEEN 18 and 50
and (dia_chi like '%Đà Nẵng%' or dia_chi like '%Quảng Trị%');
-- Câu 4
select kh.ma_khach_hang , kh.ho_ten , count(1)
as so_lan_dat_phong  
from khach_hang kh 
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach 
where lk.ma_loai_khach = 1
group by kh.ma_khach_hang , kh.ho_ten 
order by so_lan_dat_phong;
-- Câu 5


-- Câu 6
select ma_dich_vu , ten_dich_vu , dien_tich ,
so_nguoi_toi_da , chi_phi_thue , ten_loai_dich_vu 
from dich_vu dv
join loai_dich_vu using (ma_loai_dich_vu)
where ma_dich_vu not in (select ma_dich_vu from dich_vu 
join hop_dong using (ma_dich_vu)
where quarter (ngay_lam_hop_dong) = 1
and year(ngay_lam_hop_dong) = 2021 );
-- Câu 7
select dv.ma_dich_vu , dv.ten_dich_vu  ,
 dv.dien_tich , dv.so_nguoi_toi_da,
dv.chi_phi_thue , ldv.ten_loai_dich_vu from dich_vu dv
join loai_dich_vu ldv using (ma_loai_dich_vu)
where(ma_dich_vu in (select ma_dich_vu from dich_vu 
join hop_dong using (ma_dich_vu)
where year(ngay_lam_hop_dong) = 2020) 
and ma_dich_vu not in (select ma_dich_vu from dich_vu 
join hop_dong using (ma_dich_vu)
where year(ngay_lam_hop_dong) = 2021));
-- Câu 8 
-- Cách 1
select distinct ho_ten from khach_hang;
-- Cách 2
select GROUP_CONCAT(distinct ho_ten) as ho_ten
from  khach_hang
group by ho_ten;
-- Cách 3
select ho_ten
from khach_hang KHF
where not exists (
select 1 from khach_hang KHS
where KHS.ho_ten = KHF.ho_ten
and KHS.ma_khach_hang < KHF.ma_khach_hang
);
-- Câu 9
SELECT month(ngay_lam_hop_dong) as '#thang' ,
count(1) as so_luong_khach_hang
FROM hop_dong HD 
JOIN khach_hang KH using(ma_khach_hang)
WHERE year(ngay_lam_hop_dong) = 2021
GROUP BY month(ngay_lam_hop_dong)
order by '#thang' ;
-- Câu 10 
select hd.ma_hop_dong , hd.ngay_lam_hop_dong , hd.ngay_ket_thuc ,
hd.tien_dat_coc , sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from hop_dong hd 
join hop_dong_chi_tiet hdct using (ma_hop_dong)
group by hd.ma_hop_dong , hd.ngay_lam_hop_dong , hd.ngay_ket_thuc ,
hd.tien_dat_coc
order by hd.ma_hop_dong;
-- Câu 11
select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem 
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct using (ma_dich_vu_di_kem)
join hop_dong hd using (ma_hop_dong)
join khach_hang kh using (ma_khach_hang)
where kh.ma_loai_khach = 1 and kh.dia_chi like '%Vinh%' or kh.dia_chi like '%Quảng Ngãi%';
-- Câu 12 

-- Câu 13
select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem , sum(hdct.so_luong) as so_luong_dich_vu_di_kem 
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct using (ma_dich_vu_di_kem) 
group by dvdk.ma_dich_vu_di_kem 
having so_luong_dich_vu_di_kem >= All(
							select sum(so_luong) as so_luong_dich_vu_di_kem  
                            from hop_dong_chi_tiet
							group by dvdk.ma_dich_vu_di_kem 
                            );

SELECT DVDK.ma_dich_vu_di_kem,
	   DVDK.ten_dich_vu_di_kem,
       sum(so_luong)  tong_so_luong_dvdk
FROM
		dich_vu_di_kem DVDK
JOIN hop_dong_chi_tiet USING(ma_dich_vu_di_kem)
GROUP BY	DVDK.ma_dich_vu_di_kem
having
	tong_so_luong_dvdk >= ALL(
		select
            sum(so_luong) tong_so_luong_dvdk
        FROM
            hop_dong_chi_tiet
        GROUP by
           ma_dich_vu_di_kem
);
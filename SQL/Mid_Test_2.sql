--Tulis query jawaban pada online editor yang telah disarankan atau sesuai dengan preferensi ###

--Notes: anda perlu membuat query table data terlebih dahulu dengan memasukkan query di bawah###

CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

select * from item_bought

--------
select distinct item, count(*) as total_bought
from item_bought 
group by item

--------- penjualan tertinggi
with t_category as (
select distinct item, count(*) as total_bought
from item_bought 
group by item
)
select item as penjualan_tertinggi from t_category
order by total_bought desc 
limit 1

--------- penjualan terendah
with t_category as (
select distinct item, count(*) as total_bought
from item_bought 
group by item
)
select item as penjualan_terendah from t_category
order by total_bought asc
limit 1



use product_analysis;
create table analysis_table (
select 
p.Product,
p.Category,
p.Brand,
p.Description,
p.Cost_Price,
p.Sale_Price,
s.Date,
s.Units_Sold,
s.Discount_Band,
date_format(s.Date,'%M') as Month,
date_format(s.Date,'%Y') as Year,
(p.Cost_Price*s.Units_Sold) as Total_Cost,
(p.Sale_Price*s.Units_Sold) as Revenue
from products as p join sales as s
on p.Product_ID=s.Product_ID)

select * from analysis_table;

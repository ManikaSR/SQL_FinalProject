# 1 City wise Total sales, Profit
select City, round(sum(Sales)) as Sales_Value, round(sum(Profit)) as Profit from super_store_data
group by City;

# 2 Segment wise total sales, discount, profit
select Segment, round(sum(Sales)) as Total_Sales_Value, round(sum(Discount)) as Total_Discount ,round(sum(Profit)) as Total_Profit from super_store_data
group by Segment;

# 3 Top three cities Sales wise
select City, round(sum(Sales)) as Sales_Value from super_store_data
group by City
order by Sales_Value desc
limit 3;
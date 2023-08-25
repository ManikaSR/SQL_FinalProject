-- Stored Procedure without Parameter

-- drop procedure if exists sample_procedure;

-- 1
DELIMITER $$
create procedure City_wise_data()
begin
	select City, round(sum(Sales)) as Sales_Value, 
    round(sum(Profit)) as Profit 
    from super_store_data
	group by City;
end $$


-- 2
DELIMITER $$
create procedure Segment_wise_data()
begin
	select Segment, round(sum(Sales)) as Total_Sales_Value, 
    round(sum(Discount)) as Total_Discount ,
    round(sum(Profit)) as Total_Profit 
    from super_store_data
	group by Segment;
end $$


-- 3
DELIMITER $$
create procedure Top_3_city_data()
begin
	select City, round(sum(Sales)) as Sales_Value from super_store_data
	group by City
	order by Sales_Value desc
	limit 3;
end $$

-- to execute the procedure
-- call procedure_name()


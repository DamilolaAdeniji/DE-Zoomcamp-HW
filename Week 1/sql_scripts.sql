
	
-- Question 3. Count records
select count(1) total_trips from public.green_taxi_data
where cast(lpep_pickup_datetime as date) = '2019-09-18' and cast(lpep_dropoff_datetime as date) = '2019-09-18'

-- Question 4. Largest trip for each day
select cast(lpep_pickup_datetime as date) date, sum(trip_distance) total_distance
from public.green_taxi_data
group by cast(lpep_pickup_datetime as date) 
order by sum(trip_distance) desc

SELECT * FROM public.green_taxi_data

-- Question 5. Three biggest pick up Boroughs
select "Borough", sum(total_amount) total_amt 
from public.taxi_zones a
left join public.green_taxi_data as b on "PULocationID" = "LocationID"
where "Borough" != 'Unknown'
group by "Borough"
order by "total_amt" desc
limit 3

-- Question 6. Largest tip
select z2."Zone" Dropoff_zone, tip_amount
from public.green_taxi_data p 
left join public.taxi_zones z1 on p."PULocationID" = z1."LocationID"
left join public.taxi_zones z2 on p."DOLocationID" = z2."LocationID"
where z1."Zone" = 'Astoria' and cast(lpep_pickup_datetime as date) between '2019-09-01' and '2019-09-30'
order by tip_amount desc
limit 1


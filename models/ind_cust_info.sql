select c_custkey,c_name,c_address,n_name from bronze.cust_info c  
inner join bronze.nation n 
on n.n_nationkey=c.c_nationkey
where c_nationkey=8 and c_mktsegment='BUILDING'
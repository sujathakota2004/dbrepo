with c1 as (
select * from {{ ref('customer') }}
)
select id,firstname||'_'||lastname as full_name from c1
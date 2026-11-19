{% macro mkt_segment(column_name) %}
     case when {{column_name}} in ('HOUSEHOLD','BUILDING','FURNITURE')  then 'HOME_NEEDS' 
                              when {{column_name}} in ('AUTOMOBILE','MACHINERY')  then 'MACHINE_NEEDS'
                              else 'OTHER' end 
    
{% endmacro %}
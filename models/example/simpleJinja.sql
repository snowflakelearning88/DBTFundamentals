 {{
     config(
         materialized='table'
     )
 }}
 with sourcedata as
 (
 {% for i in range(10) %}
select {{i }} as number {% if not loop.last %} union all
    
{% endif %}
{% endfor %}
 )
 select * from sourcedata

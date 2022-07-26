{{
    config(
        materialized='table'
    )
}}
with sourcedata
as
(
{%- for i in range(1,10) %}

  select {{i}} 
   {%- if not loop.last %} 
      union all
   {%- endif %}
{%- endfor %}
)
select * from sourcedata
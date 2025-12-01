{% set col_list = ['sales_id', 'date_sk', 'gross_amount'] %}
{% set inc_flag = 1 %}
{% set last_load = 3 %}

select
    {% for col in col_list %}
        {{ col }}{{ "," if not loop.last }}
    {% endfor %}
from {{ ref('bronze_sales') }}
{% if inc_flag == 1 %}
where date_sk > {{ last_load }}
{% endif %}
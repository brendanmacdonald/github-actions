
-- Use the `ref` function to select from other models

select {{ ticket_sk()}}:: string as ticket_sk
from {{ ref('my_first_dbt_model') }}
where id = 1
group by all
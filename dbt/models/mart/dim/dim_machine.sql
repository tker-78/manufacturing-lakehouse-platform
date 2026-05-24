with source as (
    select distinct
    machine_id
from {{ ref('int_sensor') }} s
)
select
    {{ dbt_utils.generate_surrogate_key([
    'machine_id'
    ]) }} as equipment_key,
    machine_id,
    current_timestamp as created_at
from source

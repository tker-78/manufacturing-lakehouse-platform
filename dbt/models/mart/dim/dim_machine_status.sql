with source as (
    select distinct
        machine_status
    from {{ ref('int_evaluation') }}
)
select
    {{ dbt_utils.generate_surrogate_key([
    'machine_status'
    ]) }} as machine_status_key,
    machine_status,
    current_timestamp as created_at
from source
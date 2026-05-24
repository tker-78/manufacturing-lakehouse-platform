with source as (
    select distinct
        failure_type
    from {{ ref('int_evaluation') }} e
)
select
    {{ dbt_utils.generate_surrogate_key([
    'failure_type'
    ]) }} as failure_type_key,
    failure_type,
    current_timestamp as created_at
from source

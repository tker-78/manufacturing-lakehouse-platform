select
    timestamp::timestamp,
    machine_id::integer,
    machine_status::text,
    anomaly_flag::boolean,
    predicted_remaining_life::numeric,
    failure_type::text,
    downtime_risk::numeric,
    maintenance_required::boolean
from {{ ref('stg_sensor') }}

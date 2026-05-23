select
timestamp::timestamp,
machine_id::integer,
temperature::numeric,
vibration::numeric,
humidity::numeric,
pressure::numeric,
energy_consumption::numeric,
machine_status::text,
anomaly_flag::boolean,
predicted_remaining_life::numeric,
failure_type::text,
downtime_risk::numeric,
maintenance_required::boolean
from {{ source('operations', 'sensor')}}

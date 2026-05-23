select
  machine_status::integer,
  anomaly_flag::boolean,
  predicted_remaining_life::numeric,
  failure_type::text,
  downtime_risk::numeric,
  maintenance_required::boolean
from {{ source('operations', 'sensor')}}

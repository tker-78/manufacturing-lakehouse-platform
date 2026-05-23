select
  timestamp::timestamp,
  machine_id::integer,
  temperature::numeric,
  vibration::numeric,
  humidity::numeric,
  pressure::numeric,
  energy_consumption::numeric
from {{ source('operations', 'sensor')}}

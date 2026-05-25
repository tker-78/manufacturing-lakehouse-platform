select
    timestamp,
    machine_id,
    temperature,
    humidity,
    pressure,
    energy_consumption
from {{ ref('int_sensor') }}
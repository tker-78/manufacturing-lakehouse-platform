create table if not exists sensor (
    timestamp TEXT,
    machine_id TEXT,
    temperature TEXT,
    vibration TEXT,
    humidity TEXT,
    pressure TEXT,
    energy_consumption TEXT,
    machine_status TEXT,
    anomaly_flag TEXT,
    predicted_remaining_life TEXT,
    failure_type TEXT,
    downtime_risk TEXT,
    maintenance_required TEXT
);
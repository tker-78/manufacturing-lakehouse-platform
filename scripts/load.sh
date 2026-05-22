#!/bin/bash
psql -U postgres -d lakehouse -f /app/scripts/create_sensor_table.sql
psql -U postgres -d lakehouse -c "copy raw.sensor from '/app/datasets/smart_manufacturing_data.csv' WITH (FORMAT csv, HEADER true);"
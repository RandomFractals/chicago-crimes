COPY crimes FROM '../data/duckdb\crimes.csv' (FORMAT 'csv', header 0, delimiter ',', quote '"');

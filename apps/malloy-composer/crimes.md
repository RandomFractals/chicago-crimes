## Chicago Crime Reports

Data Source: https://data.cityofchicago.org/Public-Safety/Crimes-2022/9hwr-2zxp

Reported 2022 Chicago crimes data has been trimmed down and converted to [parquet](https://github.com/RandomFractals/chicago-crimes/blob/main/data/crimes-2022-slim.parquet) data format for faster loading in Malloy Composer app.

## What is this?

[Malloy Composer](https://github.com/malloydata/malloy-composer) is an open source tool for viewing and exploring data sets.  Data models are created in the  [Malloy](https://github.com/looker-open-source/malloy/) language.  Data can be served from a simple webserver or from a SQL database.

## View Crime Reports

<!-- malloy-query
  name="Crime Reports Dashboard"
  model="crimes.malloy"
  renderer="dashboard"
-->
```malloy
query: crimes_dashboard is crimes -> {
  aggregate: Reports
  nest:
    Domestic_Reports
    Arrests
    crimes_by_month_line_chart
    crimes_by_primary_type
}
```

<!-- malloy-query
  name="Crime Reports by Primary Type with Nested Description"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_primary_type_with_description is
  crimes -> crimes_by_primary_type + {
    nest: crimes_by_description
  }
```

<!-- malloy-query
  name="Crime Reports by Primary Type with Nested Description Summary"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_primary_type_summary is
  crimes -> crimes_by_primary_type + {
    nest: crimes_by_description_bar_chart is
      crimes_by_description { limit: 10 }
    }
```

<!-- malloy-query
  name="Crime Reports by Primary Type with Monthly Counts Summary and Top Locations"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_type_month_and_location is crimes -> {
  group_by: `Primary Type`
  aggregate:
    Reports
    percent_of_reports is Reports/all(Reports) * 100
  nest:
    crimes_by_month_line_chart
    top_locations is {
      group_by: `Location Description`
      aggregate:
        Reports
        percent_of_reports is Reports/all(Reports) * 100
      limit: 15
    }
  limit: 20
}
```

<!-- malloy-query
  name="Reported Bike Thefts"
  model="crimes.malloy"
-->
```malloy
query: bike_thefts is crimes -> {
  where: Description ~ '%BIKE%'
  group_by: `Primary Type`
  aggregate: Reports
  nest:
    crimes_by_month_line_chart
    top_locations is {
      group_by: `Location Description`
      aggregate:
        Reports
        percent_of_reports is Reports/all(Reports) * 100
      limit: 15
    }
    crimes_by_description is {
      group_by: Description
      aggregate: Reports
      limit: 10
    }
  limit: 20
}
```

<!-- malloy-query
  name="Weapons Violations"
  model="crimes.malloy"
-->
```malloy
query: weapons_violations is crimes -> {
  where: `Primary Type` ~ '%WEAPONS%'
  group_by: `Primary Type`
  aggregate:
    Reports
  nest:
    crimes_by_month_line_chart
    top_locations is {
      group_by: `Location Description`
      aggregate:
        Reports
        percent_of_reports is Reports/all(Reports) * 100
      limit: 15
    }
    crimes_by_description is {
      group_by: Description
      aggregate: Reports
      limit: 10
    }
  limit: 20
}
```

<!-- malloy-query
  name="Crime Reports by Primary Type"
  model="crimes.malloy"
  renderer="bar_chart"
-->
```malloy
query: crimes_by_primary_type_bar_chart is
  crimes -> crimes_by_primary_type
```

<!-- malloy-query
  name="Crime Reports by Description"
  model="crimes.malloy"
  renderer="bar_chart"
-->
```malloy
query: crimes_by_description_bar_chart is
  crimes -> crimes_by_description { limit: 20 }
```

<!-- malloy-query
  name="Crime Reports by Primary Type and Description"
  model="crimes.malloy"
  renderer="table"
-->
```malloy
query: crimes_by_primary_type_and_description is crimes -> {
  group_by: `Primary Type`, Description
  aggregate: Reports
}
```

<!-- malloy-query
  name="Crime Reports by Location Description"
  model="crimes.malloy"
  renderer="bar_chart"
-->
```malloy
query: crimes_by_location_description_bar_chart is
  crimes -> crimes_by_location_description { limit: 20 }
```

<!-- malloy-query
  name="Crime Reports by Month"
  model="crimes.malloy"
  renderer="line_chart"
-->
```malloy
query: crimes_by_month_line_chart is
  crimes -> crimes_by_month
```

## About Malloy Composer

Malloy Composer is implemented using [Malloy](https://github.com/malloydata/malloy) with [DuckDB WASM](https://github.com/duckdb/duckdb-wasm) and runs completely in your browser. See [Malloy Composer](https://github.com/malloydata/malloy-composer) github repository for more information and Composer app [configuration options](https://github.com/malloydata/malloy-composer#config-file-examples).
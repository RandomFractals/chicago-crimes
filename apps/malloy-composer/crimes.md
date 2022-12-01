## Chicago Crime Reports

Data Source: https://data.cityofchicago.org/Public-Safety/Crimes-2022/9hwr-2zxp

Reported 2022 Chicago crimes data has been trimmed down and converted to [parquet](https://github.com/RandomFractals/chicago-crimes/blob/main/data/crimes-2022-slim.parquet) data format for faster loading in Malloy Composer app.

## What is this?

[Malloy Composer](https://github.com/malloydata/malloy-composer) is an open source tool for viewing and exploring data sets.  Data models are created in the  [Malloy](https://github.com/looker-open-source/malloy/) language.  Data can be served from a simple webserver or from a SQL database.

## View Crime Reports

<!-- malloy-query
  name="Crime Reports by Primary Type and Description"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_primary_type_and_description is crimes -> {
  group_by: `Primary Type`, Description
  aggregate: Reports
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
  name="Crime Reports by Primary Type"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_primary_type_bar_chart is
  crimes -> crimes_by_primary_type
```

<!-- malloy-query
  name="Crime Reports by Description"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_description_bar_chart is
  crimes -> crimes_by_description { limit: 20 }
```

<!-- malloy-query
  name="Crime Reports by Primary Type with nested Description Summary"
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
  name="Crime Reports by Location Description"
  model="crimes.malloy"
-->
```malloy
query: crimes_by_location_description_bar_chart is
  crimes -> crimes_by_location_description { limit: 20 }
```

<!-- malloy-query
  name="Crime Reports by Month"
  model="crimes.malloy"
-->
```malloy
query: crimes -> crimes_by_month_line_chart
```
## About Malloy Composer

Composer is implemented using Malloy, DuckDB and WASM and runs completely
in your browser.  Javascript code is compled from here:

https://github.com/malloydata/malloy-composer
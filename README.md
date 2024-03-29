# chicago-crimes

Exploring Chicago crimes dataset with DuckDB, [Malloy Data](https://marketplace.visualstudio.com/items?itemName=malloydata.malloy-vscode), and soon new Panel/PyScript data and dashboard tools ...

## Data Source

Data from: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2

**Note:** Chicago crimes data is too large for a github repository. You can download it from the the link above.

![Chicago Crimes 2001 to Present Info ...](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-info.png?raw=true
 "Chicago Crimes 2001 to Present Info ...")

## Raw Data Views

### In VSCode

Raw dataset view in VSCode with [Tabular Data Viewer](https://github.com/RandomFractals/tabular-data-viewer) and [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv):

![Chicago Crimes 2001 to Present Data ...](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-data.png?raw=true
 "Chicago Crimes 2001 to Present Data ...")

### In DBeaver

Crimes `CSV` data imported in [DBeaver](https://dbeaver.io/) for comparison:

![Crimes Data in DBeaver](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-dbeaver.png?raw=true
 "Crimes Data in DBeaver")

### In Tad Viewer

Crimes `CSV` data imported into [Tad Viewer](https://www.tadviewer.com/):

![Crimes Data in Tad Viewer](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-in-tad.png?raw=true
 "Crimes Data in Tad Viewer")

### With Polars

Quick Chicago crimes `CSV` data scan and Arrests query with [Polars](https://www.pola.rs/) in one cell code block :

![Chicago Crimes with Polars](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-with-polars.png?raw=true
 "Chicago Crimes with Polars")

### With Polars Parquet

Loading Chicago crimes `.parquet` data file with [`polars.read_parquet()`](https://pola-rs.github.io/polars/py-polars/html/reference/api/polars.read_parquet.html):

![Chicago Crimes with Polars Parquet](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-polars-parquet.png?raw=true
 "Chicago Crimes with Polars Parquet")

### With PyArrow

Loading Chicago crimes raw `CSV` data with [PyArrow CSV](https://arrow.apache.org/docs/python/csv.html):

![Chicago Crimes with PyArrow](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-pyarrow.png?raw=true
 "Chicago Crimes with PyArrow")

### With PyArrow Feather and Parquet

Writing and reading Chicago crimes [PyArrow Table](https://arrow.apache.org/docs/python/getstarted.html#creating-arrays-and-tables) data in [Feather](https://arrow.apache.org/docs/python/feather.html) and [Parquet](https://arrow.apache.org/docs/python/parquet.html) data file formats:

![Chicago Crimes with PyArrow Feather and Parquet](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-feather-and-parquet.png?raw=true
 "Chicago Crimes with PyArrow Feather and Parquet")

### With DuckDB

Loading Chicago crimes `CSV` data into a blank `in-memory` [DuckDB](https://duckdb.org/docs/data/csv) instance:

![Chicago Crimes with DuckDB](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-with-duckdb.png?raw=true
 "Chicago Crimes with DuckDB")

### With DuckDB Parquet

Loading Chicago crimes `.parquet` data via [DuckDB `read_parquet()`](https://duckdb.org/docs/data/parquet):

![Chicago Crimes with DuckDB Parquet](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-duckdb-parquet.png?raw=true
 "Chicago Crimes with DuckDB Parquet")

### With DuckDB SQLMagic

Loading Chicago crimes `CSV` data into a blank `in-memory` [DuckDB](https://duckdb.org/docs/guides/python/jupyter) with `ipython-sql` [SQLMagic](https://github.com/catherinedevlin/ipython-sql) in [VSCode Jupyter Notebook](https://code.visualstudio.com/docs/datascience/jupyter-notebooks):

![Chicago Crimes with DuckDB SQLMagic](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-duckdb-sqlmagic.png?raw=true
 "Chicago Crimes with DuckDB SQLMagic")

### With Malloy Data

Loading Chicago crimes 2022 `parquet` data with [Malloy Data](https://looker-open-source.github.io/malloy/documentation/language/basic.html) tools via [DuckDB](https://looker-open-source.github.io/malloy/documentation/connection_instructions.html#duckdb) parquet data table source, with queries, data schema, Malloy queries outline, data preview, and query results displayed in [VSCode Malloy](https://marketplace.visualstudio.com/items?itemName=malloydata.malloy-vscode) extension query editor and views:

![Chicago Crimes with Malloy](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-duckdb-malloy-2022.png?raw=true
 "Chicago Crimes with Malloy")

### With Pandas

Loading Chicago crimes `CSV` data with [Pandas](https://pandas.pydata.org/docs/reference/index.html):

![Chicago Crimes Pandas Notebook](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-with-pandas.png?raw=true
 "Chicago Crimes Pandas Notebook")

### In R Studio

Loading Chicago crimes `CSV` data with [DBI](https://dbi.r-dbi.org/) R library and [DuckDB R API](https://duckdb.org/docs/api/r) in [R Studio](https://www.rstudio.com/):

![Chicago Crimes with DuckDB in R](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-duckdb-in-r-studio.png?raw=true
 "Chicago Crimes with DuckDB in R")

### With Julia REPL

Reading Chicago crimes `CSV` data with [DuckDB Julia Package](https://juliahub.com/ui/Packages/DuckDB/89qwz/0.5.1) in [VSCode Julia lang](https://marketplace.visualstudio.com/items?itemName=julialang.language-julia), and running it in [Julia REPL](https://docs.julialang.org/en/v1/stdlib/REPL/):

![Chicago Crimes CSV to DuckDB in Julia REPL](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-duckdb-julia-repl.png?raw=true
 "Chicago Crimes CSV to DuckDB in Julia REPL")

### With Julia CSVFiles and DataFrame

Loading Chicago crimes `CSV` data via Julia [CSVFiles](https://github.com/queryverse/CSVFiles.jl) into native Julia [DataFrames](https://dataframes.juliadata.org/stable/):

![Chicago Crimes CSV in Julia DataFrame](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-csv-julia-dataframe.png?raw=true
 "Chicago Crimes CSV in Julia DataFrame")

### In Emacs

Reading Chicago crimes `CSV` data with [SBCL](https://sbcl.org/) + [cl-duckdb](https://github.com/ak-coram/cl-duckdb) in [Emacs](https://www.gnu.org/software/emacs/) + [SLY](https://github.com/joaotavora/sly):

![Chicago Crimes CSV to DuckDB in Emacs](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-in-emacs.png?raw=true
 "Chicago Crimes CSV to DuckDB in Emacs")

## Visualizations

Collection of Jupyter [notebooks](https://github.com/RandomFractals/chicago-crimes/tree/main/notebooks) and [data apps](https://github.com/RandomFractals/chicago-crimes/tree/main/apps) visualizing Chicago crimes data from above.
### With Matplotlib

Visualizing Chicago crimes data loaded with Pandas using [Matplotlib](https://pandas.pydata.org/docs/user_guide/visualization.html):

![Chicago Crimes Matplotlib Chart](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-with-matplotlib.png?raw=true
 "Chicago Crimes Matplotlib Chart")

### With Altair Charts

2001-2022 Chicago crimes data loaded from a `parquet` file and summarized with Pandas and [Altair](https://altair-viz.github.io/) charts:

![Chicago Crimes Altair Charts Notebook](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-altair-charts-ipynb.gif?raw=true
 "Chicago Crimes Altair Charts Notebook")

### With PyScript

2022 Chicago crimes data loaded from a `CSV` file with data summary Altair charts in a browser, using [Pyodide](https://pyodide.org/en/stable/) runtime and Pandas:

https://randomfractals.github.io/chicago-crimes/apps/pyscript/

![Chicago Crimes PyScript Page](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-pyscript-page.gif?raw=true
 "Chicago Crimes PyScript Page")

### With Malloy Charts

Displaying Chicago crimes 2022 `parquet` data with [Malloy Charts](https://looker-open-source.github.io/malloy/documentation/visualizations/dashboards.html) using [Malloy Import](https://looker-open-source.github.io/malloy/documentation/language/imports.html) with table source, measures, and data queries defined in [Malloy Data](https://github.com/RandomFractals/chicago-crimes#with-malloy-data) section above:

![Chicago Crimes Malloy Charts Summary](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-by-type-malloy-summary.png?raw=true
 "Chicago Crimes Malloy Charts Summary")

### With Malloy Composer

View and query 2022 Chicago crime reports data loaded from `parquet` file with [Malloy Composer](https://github.com/malloydata/malloy-composer) app in your browser:

https://randomfractals.github.io/chicago-crimes/apps/malloy-composer/

![Chicago Crimes Malloy Composer App](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crimes-malloy-composer.gif?raw=true
 "Chicago Crimes Malloy Composer App")

### With Malloy Fiddle

View 2022 Chicago crime reports data, schema, [Malloy](https://malloydata.github.io/malloy/documentation/language/source.html) model, and queries with [Malloy Fiddle](https://github.com/malloydata/malloy-demo-fiddle) app in your browser:

https://randomfractals.github.io/chicago-crimes/apps/malloy-fiddle

![Chicago Crime Reports Malloy Fiddle App](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crime-reports-malloy-fiddle-app.gif?raw=true
 "Chicago Crime Reports Malloy Fiddle App")

### With DuckDB Sql Tools

Loading and querying 7,687,725 Chicago crime reports recorded from 2001 through the end of November 2022 from a large 1.68 GB CSV data file with new VSCode [DuckDB Sql Tools](https://marketplace.visualstudio.com/items?itemName=RandomFractalsInc.duckdb-sql-tools) extension:

![Chicago Crime Reports with DuckDB Sql Tools](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/create-chicago-crime-reports-duckdb-table.gif?raw=true
 "Create and Query Chicago Crime Reports DuckDB Table")

Exporting in-memory DuckDB instance with DuckDB Sql Tools:

![Chicago Crime Reports DuckDB Database Export](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/export-chicago-crime-reports-duckdb.gif?raw=true
 "Chicago Crime Reports DuckDB Database Export")

Exporting DuckDB instance in Parquet data format and importing it into new test DuckDB memory instance:

![Chicago Crime Reports DuckDB Database Export](https://github.com/RandomFractals/chicago-crimes/blob/main/docs/images/chicago-crime-reports-parquet-data-export-import.gif?raw=true
 "Chicago Crime Reports DuckDB Parquet Data Export/Import")

## Prior Works

Links to our prior works on [Chicago Crimes EDA](https://twitter.com/search?q=(%23ChicagoCrimes)%20(from%3ATarasNovak)&src=typed_query) circa 2017/2018:

🔗 [Chicago Crimes EDA Summary on Linkedin](https://www.linkedin.com/pulse/chicago-crimes-2017-taras-novak/)

📚 [Chicago Crimes EDA 2017 Jupyter Notebooks](https://github.com/RandomFractals/ChicagoCrimes/tree/master/notebooks)

📚 [Observable JS Chicago Crimes Notebook Collection 2018](https://observablehq.com/@randomfractals/chicagocrimes)

📚 [Chicago Homocides Observable JS Notebook Collection 2018](https://observablehq.com/@randomfractals/leaflet-pixi-overlay?collection=@randomfractals/chicago-homicides)

🐦 [Chicago Crimes EDA, Data Preview and Tabular Data Viewer tweets](https://twitter.com/search?q=(%23ChicagoCrimes)%20(from%3ATarasNovak)&src=typed_query)

using Dates
using CSVFiles, DataFrames

println("Loading CSV data ...")
startTime = Dates.Time(Dates.now())

# load crimes CSV data into a dataframe
crimes = DataFrame(load("./data/crimes.csv"))

endTime = Dates.Time(Dates.now())
loadTime = round((endTime - startTime), Dates.Second)
println("CSV data loaded in $(loadTime)")

# show crimes dataframe info
println("\ncrimes dataframe:")
println(identity.(crimes))

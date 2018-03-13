
import NestedMill: DataSchema, DataEntry, reflect
s1 = Dict(:a => [1 2 3 4; 1 1 1 1])
s2 = Dict(:a => [1; 2],:b => [1; 2])
s3 = Dict(:b => [1; 3])

schema = DataSchema((DataEntry(:a,zeros(2,0)),DataEntry(:b,zeros(2))))

a1 = reflect(schema,s1)
a2 = reflect(schema,s2)
a3 = reflect(schema,s3)


# s = "{\"a_number\" : 5.0, \"an_array\" : [\"string\", 9]}"
# j = JSON.parse(s)
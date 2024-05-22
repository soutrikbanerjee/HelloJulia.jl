using HelloJulia
using Test

@test isdefined(@__MODULE__, :pluto)
@test isdefined(@__MODULE__, :jupyter)

module HelloJulia

# should have form "1.x" for some integer x; do not use v"1.x".
const JULIA_VERSION = "1.10"
const ROOT = joinpath(@__DIR__, "..")
const NOTEBOOKS = joinpath(ROOT, "notebooks")

# need Pluto here?
import IJulia, Pluto, Pkg
export go, start, pluto, pluto_now, setup, stop, jupyter, jupiter

const START_NOTEBOOK = joinpath(pkgdir(@__MODULE__), "notebooks", "pluto_index.jl")

jupyter() = IJulia.notebook(dir=NOTEBOOKS)
pluto() = Pluto.run(notebook=START_NOTEBOOK)

function __init__()
    if haskey(ENV, "TEST_MLJBASE")
        ENV["TEST_MLJBASE"] = "false"
    end

    VERSION in Pkg.Types.VersionSpec(JULIA_VERSION) ||
        @warn "This version of HelloJulia.jl should be run "*
        "under Julia $JULIA_VERSION"
        "but you're running $VERSION"
end

end # module

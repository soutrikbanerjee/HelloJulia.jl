# Demos and Tutorials

Quick, static views of the demo and tutorial notebooks:

|Notebook |
|:-------:|
|[Mandelbrot set demo](notebooks/mandelbrot/notebook.ipynb) |
[Julia's secret sauce](notebooks/secret_sauce/notebook.ipynb) |
[Package composability](notebooks/pkg_composability/notebook.ipynb) |
[01 - First_steps](notebooks/01_first_steps/notebook.unexecuted.ipynb) |
[02 - DataFrames](notebooks/02_dataframes/notebook.ipynb) |
[03 - Machine learning](notebooks/03_machine_learning/notebook.ipynb) |

## Setup

The following instructions only need to be executed successfully once:

- [Install a correct version of the Julia compiler](FIRST_STEPS.md).

- **In a new Julia session** type the following at the `julia>` prompt, inlcuding a RETURN at the end of each line (or do copy/paste + one final RETURN):

```julia
ENV["JULIA_PKG_PRECOMPILE_AUTO"]=0
using Pkg
Pkg.activate(temp=true)
Pkg.develop(url="https://github.com/ablaom/HelloJulia.jl")
Pkg.activate(joinpath(Pkg.devdir(), "HelloJulia"))
Pkg.instantiate()
Pkg.build("Conda")
Pkg.build("IJulia")
ENV["JULIA_PKG_PRECOMPILE_AUTO"]=1

using HelloJulia
using Pkg
Pkg.test("HelloJulia")
exit()
```

**IF YOU ARE PREPARING FOR A JULIA WORKSHOP** you can stop now. You're ready for the
workshop!


## Running the demos and tutorials

!!! Note

    Running notebooks for the first time may involve delays due to 
	precompilation of newly installed packages.

After starting a new Julia session, enter these commands:

```julia
using Pkg; Pkg.activate(joinpath(Pkg.devdir(), "HelloJulia"))
using HelloJulia
```

Then: 

### Option 1: To run as Pluto notebooks

- Enter `pluto()` at the `julia>` prompt.

To kill the notebook server when finished, navigate to the window running Julia and enter
CONTROL-C.

### Option 2: To run as Jupyter notebooks

- Enter `juptyer()` at the `julia>` prompt. If asked, agree to install Jupyter using
  Conda.

- In the browser window that should appear, navigate to the folder of interest

- Choose the file called `notebook.unexecuted.ipynb` (or
  `notebook.ipynb` to see pre-executed version)
  
To kill the notebook server when finished, navigate to the window running Julia and enter
CONTROL-C.


### Option 3: To run as script in your editor

For more experienced users and instructors.

Clone this repository locally and navigate to the appropriate
sub-folder of `/notebooks`. Open the file `notebook.jl` in your
Julia-enabled IDE.

---

[![Build Status](https://github.com/ablaom/HelloJulia.jl/workflows/CI/badge.svg)](https://github.com/ablaom/HelloJulia.jl/actions) 

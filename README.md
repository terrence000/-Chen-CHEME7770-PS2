## Chen-CHEME7770-PS2

This is a project aim to solve CHEME7770 PS2 problem 2.

The constraints and the solving function are encoded in the [DataDictionary.jl] file, a basic driver to perform the flux balance analysis calculation is given in [Solve_anaerobic_noreg.jl], [Solve_aerobic_noreg.jl], [Solve_aerobic_reg.jl],and [Solve_anaerobic_reg.jl].

## Requirements
This repository holds the flux balance analysis problem (FBA) for the *E.coli* network example from [Palsson laboratory](http://systemsbiology.ucsd.edu/Downloads/EcoliCore) and is described in [EcoSal Chapter 10.2.1 - Reconstruction and Use of Microbial Metabolic Networks: the Core Escherichia coli Metabolic Model as an Educational Guide by Orth, Fleming, and Palsson (2010)](http://www.asmscience.org/content/journal/ecosalplus/10.1128/ecosalplus.10.2.1#backarticlefulltext).

The flux balance analysis problem is solved as a [Linear Programming (LP)](https://www.math.ucla.edu/~tom/LP.pdf) problem using the [GLPK solver](https://www.gnu.org/software/glpk/). You can install the [GLPK package for Julia](https://github.com/JuliaOpt/GLPK.jl) using the ``Pkg.add`` command from the REPL:
	
	julia> Pkg.add("GLPK")

### Solving

To check maximum growth rate per unit glucose uptake for aerobic and anaerobic cultures, and also for with/ without regulatory, please include the four solving code:

For no regulation:

To solve anerobic, please

	julia> include("Solve_aerobic_noreg.jl")
	
the answer (objective_value) should = 0.840673


To solve anerobic, please

	julia> include("Solve_anaerobic_noreg.jl")
	
the answer (objective_value) should = 0.219869


With regulation:

To run ``include("determine_transcriptional_regulators.jl")``

To solve anerobic, please

	julia> include("Solve_aerobic_noreg.jl")
	
the answer (objective_value) should = 0.840673

To solve anerobic, please

	julia> include("Solve_anaerobic_noreg.jl")
	
the answer (objective_value) should = 0.219869


 

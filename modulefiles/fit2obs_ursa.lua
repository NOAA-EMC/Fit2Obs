help([[
Build environment for fit2obs on Ursa
]])

prepend_path("MODULEPATH", os.getenv("spack_stack_mod_path"))

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "None"
local stack_intel_oneapi_mpi_ver=os.getenv("stack_intel_oneapi_mpi_ver") or "None"

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_intel_oneapi_mpi_ver))

load("fit2obs_common")

setenv("CC","mpiicc")
setenv("CXX","mpiicpc")
setenv("FC","mpiifort")

whatis("Description: fit2obs environment on Ursa with Intel Compilers")

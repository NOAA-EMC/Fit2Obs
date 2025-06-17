help([[
Build environment for fit2obs on Ursa
]])

prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.1/envs/ue-oneapi-2024.2.1/install/modulefiles/Core")

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2024.2.1"
local stack_intel_oneapi_mpi_ver=os.getenv("stack_intel_oneapi_mpi_ver") or "2021.13"

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_intel_oneapi_mpi_ver))

load("fit2obs_common")

setenv("CC","mpiicc")
setenv("CXX","mpiicpc")
setenv("FC","mpiifort")

whatis("Description: fit2obs environment on Ursa with Intel Compilers")

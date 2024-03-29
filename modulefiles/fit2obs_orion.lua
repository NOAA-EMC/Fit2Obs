help([[
Build environment for fit2obs on Orion
]])

prepend_path("MODULEPATH", "/work/noaa/epic/role-epic/spack-stack/orion/spack-stack-1.6.0/envs/gsi-addon-env/install/modulefiles/Core")

local stack_intel_ver=os.getenv("stack_intel_ver") or "2022.0.2"
local stack_impi_ver=os.getenv("stack_impi_ver") or "2021.5.1"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

load("fit2obs_common")

whatis("Description: fit2obs environment on Orion with Intel Compilers")

help([[
Build environment for fit2obs on Hera
]])

--prepend_path("MODULEPATH", "/scratch1/NCEPDEV/nems/role.epic/spack-stack/spack-stack-1.6.0/envs/unified-env/install/modulefiles/Core")
prepend_path("MODULEPATH", "/scratch1/NCEPDEV/nems/role.epic/spack-stack/spack-stack-1.6.0/envs/gsi-addon-dev-rocky8/install/modulefiles/Core")

local stack_intel_ver=os.getenv("stack_intel_ver") or "2021.5.0"
local stack_impi_ver=os.getenv("stack_impi_ver") or "2021.5.1"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

load("fit2obs_common")

whatis("Description: fit2obs environment on Hera with Intel Compilers")

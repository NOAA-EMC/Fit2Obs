help([[
Build environment for fit2obs on NOAA cloud
]])

prepend_path("MODULEPATH", os.getenv("spack_stack_mod_path"))

load(pathJoin("gnu", gcc_ver))
load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

load("fit2obs_common")

setenv("CC","/apps/oneapi/mpi/latest/bin/mpiicc")
setenv("CXX","/apps/oneapi/mpi/latest/bin/mpiicpc")
setenv("FC","/apps/oneapi/mpi/latest/bin/mpiifort")

whatis("Description: fit2obs environment on NOAA cloud")

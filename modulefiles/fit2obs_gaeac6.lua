help([[
Build environment for fit2obs on Gaea C6
]])

prepend_path("MODULEPATH", os.getenv("spack_stack_mod_path"))

local stack_intel_ver=os.getenv("stack_intel_ver") or "None"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "None"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

load("fit2obs_common")

unload("cray-libsci")

setenv("CC","cc")
setenv("CXX","CC")
setenv("FC","ftn")

whatis("Description: fit2obs environment on Gaea with Intel Compilers")

#!/bin/bash
# AMReX Build Notes
# you could run this as a bash script from the amrex home directory
# only the INSTALL_DIR needs to be updated

# build options
DIM=3
ENABLE_PIC=ON
ENABLE_MPI=OFF
ENABLE_OMP=OFF

# installation directory
INSTALL_DIR=/PATH/TO/LAMBReX/libamrex

# cmake opts
CMAKE_OPTS="-DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} "
CMAKE_OPTS+="-DDIM=${DIM} -DENABLE_PIC=${ENABLE_PIC} "
CMAKE_OPTS+="-DENABLE_MPI=${ENABLE_MPI} -DENABLE_OMP=${ENABLE_OMP} "

# build
mkdir -p build
cd build
cmake ${CMAKE_OPTS} ../
make install

# ---------------------------------------------------------------------------
# Programmer(s): Giorgis Georgakoudis @ LLNL
# ---------------------------------------------------------------------------
# SUNDIALS Copyright Start
# Copyright (c) 2002-2020, Lawrence Livermore National Security
# and Southern Methodist University.
# All rights reserved.
#
# See the top-level LICENSE and NOTICE files for details.
#
# SPDX-License-Identifier: BSD-3-Clause
# SUNDIALS Copyright End
# ---------------------------------------------------------------------------
# Locate Caliper and add support for building
#
# Creates the variables:
#   ENABLE_CALIPER
# ---------------------------------------------------------------------------

set(ENABLE_CALIPER TRUE)

find_package(Caliper REQUIRED)

add_definitions(-DENABLE_CALIPER)
include_directories(${caliper_INCLUDE_DIR})
#add_library(${caliper_LIB_PATH})
link_libraries(caliper)

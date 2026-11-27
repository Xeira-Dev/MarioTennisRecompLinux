#!/bin/bash
# Build the core engines with applied patches. Run from the project root:
#   ./tools/build_engines.sh
set -e

if [ ! -d "build_engines" ]; then
  echo "Creating build directory..."
  mkdir -p build_engines
fi

cd build_engines
echo "Configuring engines..."
cmake ..
echo "Compiling engines..."
cmake --build . --target N64RecompCLI --target RSPRecomp
cd ..

#!/bin/bash
# Build Mario Tennis: Recompiled for Linux using Ninja.
set -e

if [ ! -f build/build.ninja ]; then
  echo "Configuring project..."
  cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DRMLUI_PRECOMPILED_HEADERS=OFF
fi

echo "Building executable..."
cmake --build build --target MarioTennisRecompiled -- -k 0

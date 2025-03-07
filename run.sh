#!/bin/sh

CLEAN=false

# Check if "--clean" is passed
for arg in "$@"; do
  if [ "$arg" = "--clean" ]; then
    CLEAN=true
  fi
done

# Run the build script
if [ "$CLEAN" = true ]; then
  echo "Running clean build..."
  ./build_only.sh --clean
else
  echo "Running standard build..."
  ./build_only.sh
fi

# If build succeeds, start the app
if [ $? -eq 0 ]; then
  echo "Starting the app..."
  ./start_only.sh
else
  echo "Build failed. Not starting the app."
  exit 1
fi

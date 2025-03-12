#!/bin/sh

CLEAN=false

# Check if "--clean" is passed
for arg in "$@"; do
  if [ "$arg" = "--clean" ]; then
    CLEAN=true
  fi
done

echo "Stopping existing containers..."
docker-compose down

if [ "$CLEAN" = true ]; then
  echo "Performing a clean build (removing project-specific Docker artifacts)..."

  # Remove only this project's images & volumes (not everything)
  docker rmi pillable-rust-api postgres -f 2>/dev/null
  docker volume rm pillable_postgres_data -f 2>/dev/null
fi

echo "Building the app..."
docker-compose build --no-cache

echo "✅ Build complete!"

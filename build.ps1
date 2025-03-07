param (
    [switch]$clean
)

Write-Host "Stopping existing containers..."
docker-compose down

if ($clean) {
    Write-Host "Performing a clean build..."
    docker rmi pillable-rust-api postgres -f 2>$null
    docker volume rm pillable_postgres_data -f 2>$null
}

Write-Host "Building the app..."
docker-compose build --no-cache

Write-Host "Build complete!"
